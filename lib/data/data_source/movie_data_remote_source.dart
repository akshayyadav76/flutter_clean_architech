
import 'dart:convert';

import 'package:flutter_clean_architech/data/core/api_constants.dart';
import 'package:flutter_clean_architech/data/models/movie_result_model.dart';
import 'package:http/http.dart';

import '../models/movie_model.dart';



abstract class MovieDataRemoteSource{

Future<List<MovieModel>> getTranding();


}

class MovieDataRemoteSourceImpl extends MovieDataRemoteSource{

 final Client _client;
 MovieDataRemoteSourceImpl(this._client);


  @override
  Future<List<MovieModel>> getTranding()async {
  var response = await _client.get("${ApiConstants.BASE_URL}trending/movie/day?api_key=${ApiConstants.API_KEY}",
  headers: {'Content-Type':'application.json'}
  );

  if(response.statusCode ==200){
    final responseBody = json.decode(response.body);
    final movies =MovieResultModel.fromJson(responseBody).movies; 
    print(movies);
    return movies;
  }else{
    throw Exception(response.reasonPhrase);
  }
  
  
  }

}