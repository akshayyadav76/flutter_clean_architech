

import 'package:flutter_clean_architech/data/core/api_client.dart';
import 'package:flutter_clean_architech/data/data_source/movie_data_remote_source.dart';
import 'package:flutter_clean_architech/data/repositories/movie_repository_impl.dart';
import 'package:http/http.dart';

void main(){
  ApiClient apiClient =ApiClient(Client());
  var movieDataRemoteImpl= MovieDataRemoteSourceImpl(apiClient);
  var obj =MovieRepositoryImpl(movieDataRemoteImpl);
  obj.getTranding();
  
  

}