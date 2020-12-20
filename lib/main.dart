

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architech/data/core/api_client.dart';
import 'package:flutter_clean_architech/data/data_source/movie_data_remote_source.dart';
import 'package:flutter_clean_architech/data/repositories/movie_repository_impl.dart';
import 'package:flutter_clean_architech/di/git_it.dart' as getIt;
import 'package:flutter_clean_architech/domain/entities/no_params.dart';
import 'package:flutter_clean_architech/domain/usecases/get_trending.dart';
import 'package:http/http.dart';
import 'package:pedantic/pedantic.dart';

import 'domain/entities/app_error.dart';
import 'domain/entities/movie_entity.dart';


void main()async{
  // app won't start untill all the getit instance instialize
  unawaited(getIt.init());

  // ApiClient apiClient =ApiClient(Client());
  // var movieDataRemoteImpl= MovieDataRemoteSourceImpl(apiClient);
  // var obj =MovieRepositoryImpl(movieDataRemoteImpl);
  // //obj.getTranding();
  // GetTrending getTrending =GetTrending(obj);
  GetTrending getTrending = getIt.getItInstance<GetTrending>();
Either<AppError,List<MovieEntity>>response = await getTrending(NoParams());
response.fold(
  (l){
    print("error");
    print(l);
  },(r){
    print(r);
  }
);


  
  

}