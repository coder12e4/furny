import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'kart_state.dart';

class KartCubit extends Cubit<KartState> {
  KartCubit() : super(KartInitial());
}
