part of 'movie_carosal_bloc.dart';

abstract class MovieCarosalState extends Equatable {
  const MovieCarosalState();
  
  @override
  List<Object> get props => [];
}

class MovieCarosalInitial extends MovieCarosalState {}

class MovieCarosalError extends MovieCarosalState{}

class MovieCarosalLoaded extends MovieCarosalState{
  final List<MovieEntity> movies;
  final int deafultIndex;

  MovieCarosalLoaded({this.movies,this.deafultIndex =0})
    :assert(deafultIndex >=0,"deafultIndex cannot be less than 0");

  @override
  List<Object> get props => [movies,deafultIndex];
}
