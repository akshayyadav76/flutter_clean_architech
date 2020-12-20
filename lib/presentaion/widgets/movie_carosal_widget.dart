

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architech/domain/entities/movie_entity.dart';
import 'package:flutter_clean_architech/presentaion/screens/home/movie_carosal/movie_page_view.dart';
import 'package:flutter_clean_architech/presentaion/widgets/movie_app_bar.dart';

class MovieCarosalWidget extends StatelessWidget{
 final List<MovieEntity> movies;
 final int defultIndex;

 MovieCarosalWidget({Key key,@required this.movies, @required this.defultIndex})
 :assert(defultIndex >=0,'defulatIndex cannot be less than 0'),super(key: key);

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       MovieAppBar(),
       MoviePageView(
         movies:movies,
         initialPage:defultIndex
       )
     ],
   );




  }
}