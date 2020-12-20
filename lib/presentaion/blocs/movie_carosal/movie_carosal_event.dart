part of 'movie_carosal_bloc.dart';

abstract class MovieCarosalEvent extends Equatable {
  const MovieCarosalEvent();

  @override
  List<Object> get props => [];
}

class CarosealLoadedEvent extends MovieCarosalEvent{
  final int defalutIndex;

  CarosealLoadedEvent({this.defalutIndex= 0})
  :assert(defalutIndex >=0,"deafultIndex cannot be less than 0");

  @override
  List<Object> get props => [defalutIndex];
}