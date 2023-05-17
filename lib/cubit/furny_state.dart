part of 'furny_cubit.dart';

@immutable
abstract class FurnyState {}

class FurnyInitial extends FurnyState {}
class FurnyLoading extends FurnyState {}
class FurnySuccess extends FurnyState {

}
class FurnyError extends FurnyState {}



class cartViewLoading extends FurnyState{}
class cartViewSuccess extends FurnyState{}
class cartViewFail extends FurnyState{}