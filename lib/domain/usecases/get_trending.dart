
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architech/domain/entities/app_error.dart';
import 'package:flutter_clean_architech/domain/entities/movie_entity.dart';
import 'package:flutter_clean_architech/domain/repositories/movie_repository.dart';

class GetTrending{
  final MovieRepository repository;

  GetTrending(this.repository);

Future<Either<AppError,List<MovieEntity>>> call()async{
  return await repository.getTranding();
  }
}