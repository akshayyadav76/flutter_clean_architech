
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architech/domain/entities/app_error.dart';
import 'package:flutter_clean_architech/domain/entities/movie_entity.dart';
import 'package:flutter_clean_architech/domain/entities/no_params.dart';
import 'package:flutter_clean_architech/domain/repositories/movie_repository.dart';
import 'package:flutter_clean_architech/domain/usecases/use_cases.dart';

class GetPlayingNow  extends UseCases<List<MovieEntity>,NoParams>{
  final MovieRepository repository;

  GetPlayingNow(this.repository);
@override
Future<Either<AppError,List<MovieEntity>>> call(NoParams noParams)async{
  return await repository.getPlayingNow();
  }
}