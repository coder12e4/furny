part of 'kart_cubit.dart';

@immutable
abstract class KartState {}

class KartInitial extends KartState {}
class KartADDLoding extends KartState {}
class KartADDSucces extends KartState {}
class KartADDFailed extends KartState {}