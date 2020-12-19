

import 'package:flutter_clean_architech/data/data_source/movie_data_remote_source.dart';
import 'package:http/http.dart';

void main(){
  Client apiClient =Client();
  var obj =MovieDataRemoteSourceImpl(apiClient);
  obj.getTranding();
  print("has code of obj ${obj.hashCode}");
  
}