



import 'package:flutter_clean_architech/data/core/api_client.dart';
import 'package:flutter_clean_architech/data/data_source/movie_data_remote_source.dart';
import 'package:flutter_clean_architech/domain/usecases/get_comming_soon.dart';
import 'package:flutter_clean_architech/domain/usecases/get_playing_now.dart';
import 'package:flutter_clean_architech/domain/usecases/get_popular.dart';
import 'package:flutter_clean_architech/domain/usecases/get_trending.dart';
import 'package:flutter_clean_architech/presentaion/blocs/movie_carosal/movie_carosal_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

final getItInstance = GetIt.I;

Future init()async{
// they used in all our app so singleton 
  getItInstance.registerLazySingleton<Client>(()=>Client());
  getItInstance.registerLazySingleton<ApiClient>(()=>ApiClient(getItInstance()));
  getItInstance.registerLazySingleton<MovieDataRemoteSource>(()=>MovieDataRemoteSourceImpl(getItInstance()));


  getItInstance.registerLazySingleton<GetTrending>(()=>GetTrending(getItInstance()));
  getItInstance.registerLazySingleton<GetPopular>(()=>GetPopular(getItInstance()));
  getItInstance.registerLazySingleton<GetPlayingNow>(()=>GetPlayingNow(getItInstance()));
  getItInstance.registerLazySingleton<GetCommingSoon>(()=>GetCommingSoon(getItInstance()));

  getItInstance.registerFactory<MovieCarosalBloc>(()=>MovieCarosalBloc(getTrending: getItInstance()));

}