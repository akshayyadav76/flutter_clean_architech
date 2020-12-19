

import 'package:flutter_clean_architech/data/core/api_client.dart';
import 'package:flutter_clean_architech/data/data_source/movie_data_remote_source.dart';
import 'package:http/http.dart';

void main(){
  ApiClient apiClient =ApiClient(Client());

  var obj =MovieDataRemoteSourceImpl(apiClient);
  obj.getTranding();
  obj.getPopular();
  obj.getComingSoon();
  obj.getplayingNow();
  print("has code of obj ${obj.hashCode}");

}