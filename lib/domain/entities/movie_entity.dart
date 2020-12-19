import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';



class MovieEntity extends Equatable{

final int id;
final String posterPath;
final String backdropPath;
final String title;
final String realaseDate;
final String overview;
final num voteAverage;

 const MovieEntity({
     @required this.id,
     @required this.posterPath,
     @required this.backdropPath, 
     @required this.title, 
     @required this.realaseDate, 
     @required this.voteAverage,
     this.overview, 
     }) : assert(id !=null,"movie id must not null");

  @override
  // TODO: implement props
  List<Object> get props => [id,title];

@override
 bool get stringify => true;
   
}