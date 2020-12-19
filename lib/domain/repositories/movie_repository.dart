import 'package:flutter_clean_architech/domain/entities/movie_entity.dart';


abstract class MovieRepository{
Future<List<MovieEntity>> getTranding();

}