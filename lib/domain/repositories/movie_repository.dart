import 'package:flutter_clean_architech/domain/entities/app_error.dart';
import 'package:flutter_clean_architech/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';

abstract class MovieRepository{
Future<Either<AppError,List<MovieEntity>>> getTranding();
Future<Either<AppError,List<MovieEntity>>> getPopular();
Future<Either<AppError,List<MovieEntity>>> getPlayingNow();
Future<Either<AppError,List<MovieEntity>>> getCommingSoon();

}