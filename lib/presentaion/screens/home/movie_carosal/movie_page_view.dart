




import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architech/common/constants/size_constants.dart';
import 'package:flutter_clean_architech/common/screenutils/screen_utils.dart';
import 'package:flutter_clean_architech/domain/entities/movie_entity.dart';
import '../../../../common/extentions/size_extention.dart';
import 'package:flutter_clean_architech/presentaion/screens/home/movie_carosal/movie_card_widget.dart';

class MoviePageView extends StatefulWidget {
  final List<MovieEntity> movies;
  final int initialPage;

  const MoviePageView({
    Key key,
    @required this.movies,
    @required this.initialPage,
  })  : assert(initialPage >= 0, 'initialPage cannot be less than 0'),
        super(key: key);

  @override
  _MoviePageViewState createState() => _MoviePageViewState();
}

class _MoviePageViewState extends State<MoviePageView> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: widget.initialPage,
      keepPage: false,
      viewportFraction: 0.7,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Sizes.dimen_10.h),
      height: ScreenUtil.screenHeight * 0.35,
      child: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          final MovieEntity movie = widget.movies[index];
          return MovieCardWidget(
           
            movieId: movie.id,
            posterPath: movie.posterPath,
          );
        },
        pageSnapping: true,
        itemCount: widget.movies?.length ?? 0,
        onPageChanged: (index) {
          // BlocProvider.of<MovieBackdropBloc>(context)
          //     .add(MovieBackdropChangedEvent(widget.movies[index]));
        },
      ),
    );
  }
}