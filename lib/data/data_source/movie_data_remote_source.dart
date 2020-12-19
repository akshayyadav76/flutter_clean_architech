
import 'dart:convert';

import 'package:flutter_clean_architech/data/core/api_client.dart';
import 'package:flutter_clean_architech/data/core/api_constants.dart';
import 'package:flutter_clean_architech/data/models/movie_result_model.dart';
import 'package:http/http.dart';

import '../models/movie_model.dart';



abstract class MovieDataRemoteSource{

Future<List<MovieModel>> getTranding();
Future<List<MovieModel>> getPopular();
Future<List<MovieModel>> getplayingNow();
Future<List<MovieModel>> getComingSoon();


}

class MovieDataRemoteSourceImpl extends MovieDataRemoteSource{

 final ApiClient _client;
 MovieDataRemoteSourceImpl(this._client);


  @override
  Future<List<MovieModel>> getTranding()async {
   var responseBody = await _client.get("trending/movie/day");
  final movies =MovieResultModel.fromJson(responseBody).movies; 
    print(movies);
    return movies;
  
  
  
  }

  @override
  Future<List<MovieModel>> getPopular()async {
   var responseBody = await _client.get("movie/popular");
    final movies =MovieResultModel.fromJson(responseBody).movies; 
    print(movies);
    return movies;

  
  }

  @override
  Future<List<MovieModel>> getComingSoon() async{
    var responseBody = await _client.get("movie/upcoming");
    final movies =MovieResultModel.fromJson(responseBody).movies; 
    print(movies);
    return movies;
  }

  @override
  Future<List<MovieModel>> getplayingNow()async {
   var responseBody = await _client.get("movie/now_playing");
    final movies =MovieResultModel.fromJson(responseBody).movies; 
    print(movies);
    return movies;
  }

}