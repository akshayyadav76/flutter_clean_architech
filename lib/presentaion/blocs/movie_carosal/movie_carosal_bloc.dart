import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architech/domain/entities/movie_entity.dart';
import 'package:flutter_clean_architech/domain/entities/no_params.dart';
import 'package:flutter_clean_architech/domain/usecases/get_trending.dart';

part 'movie_carosal_event.dart';
part 'movie_carosal_state.dart';

class MovieCarosalBloc extends Bloc<MovieCarosalEvent, MovieCarosalState> {

  final GetTrending getTrending;
  MovieCarosalBloc({@required this.getTrending}) : super(MovieCarosalInitial());


  @override
  Stream<MovieCarosalState> mapEventToState(
    MovieCarosalEvent event,
  ) async* {
    if(event is CarosealLoadedEvent){
      final movieEither = await getTrending(NoParams());
      print("see $movieEither");
      yield movieEither.fold(
        (l)=>MovieCarosalError(),
        (movies){
          return MovieCarosalLoaded(
            movies:  movies,
            deafultIndex:  event.defalutIndex
          );
        });
     
    }
   
  }
}
