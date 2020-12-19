

import 'package:flutter_clean_architech/data/data_source/movie_data_remote_source.dart';
import 'package:flutter_clean_architech/data/models/movie_model.dart';
import 'package:flutter_clean_architech/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository{
final MovieDataRemoteSource  _movieDataRemoteSource;

 MovieRepositoryImpl(this._movieDataRemoteSource);

  @override
  Future<List<MovieModel>> getTranding() {
    try{
   return _movieDataRemoteSource.getTranding();
    }on Exception{
      return null;
    }
  }

}