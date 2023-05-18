import 'package:bloc/bloc.dart';
import 'package:furny/model/loginmodel.dart';
import 'package:furny/repository/loginrepository.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final loginRepo objloginrepo;

  LoginCubit(LoginState state,this.objloginrepo) : super(LoginInitial());

  Future<void>loginFun(String username,String password)async{
    emit(LoginLoading());
    login objlogin = await objloginrepo.loginToaccount(username, password);
    emit(LoginSuccess(objlogin));
  }


}
