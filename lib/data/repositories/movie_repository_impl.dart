

import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architech/data/data_source/movie_data_remote_source.dart';
import 'package:flutter_clean_architech/data/models/movie_model.dart';
import 'package:flutter_clean_architech/domain/entities/app_error.dart';
import 'package:flutter_clean_architech/domain/entities/movie_entity.dart';
import 'package:flutter_clean_architech/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository{
final MovieDataRemoteSource  _movieDataRemoteSource;

 MovieRepositoryImpl(this._movieDataRemoteSource);

  @override
  Future<Either<AppError,List<MovieModel>>> getTranding()async {
    try{
     var movies =await _movieDataRemoteSource.getTranding();
   return Right(movies);
    }on Exception{
      return Left(AppError("someting went wrong here"));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getCommingSoon()async{
  try{
     var movies =await _movieDataRemoteSource.getComingSoon();
   return Right(movies);
    }on Exception{
      return Left(AppError("someting went wrong in comming soon"));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPlayingNow() async{
   try{
     var movies =await _movieDataRemoteSource.getplayingNow();
   return Right(movies);
    }on Exception{
      return Left(AppError("someting went wrong in playing now"));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPopular() async{
  try{
     var movies =await _movieDataRemoteSource.getPopular();
   return Right(movies);
    }on Exception{
      return Left(AppError("someting went wrong in popular"));
    }
  }

}