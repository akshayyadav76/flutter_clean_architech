
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architech/domain/entities/app_error.dart';

abstract class UseCases<Type,Params>{

Future<Either<AppError,Type>> call(Params params);
}