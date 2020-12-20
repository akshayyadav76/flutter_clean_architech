import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architech/di/git_it.dart';
import 'package:flutter_clean_architech/presentaion/blocs/movie_carosal/movie_carosal_bloc.dart';
import 'package:flutter_clean_architech/presentaion/widgets/movie_app_bar.dart';
import 'package:flutter_clean_architech/presentaion/widgets/movie_carosal_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MovieCarosalBloc movieCarosalBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movieCarosalBloc = getItInstance<MovieCarosalBloc>();
    movieCarosalBloc.add(CarosealLoadedEvent());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    movieCarosalBloc?.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: BlocProvider<MovieCarosalBloc>(
        create: (context) => movieCarosalBloc,
        child: BlocBuilder<MovieCarosalBloc, MovieCarosalState>(
          builder: (context, state) {
            print("state $state");
            if(state is MovieCarosalLoaded){
            return Stack(
              fit: StackFit.expand,
              children: [
                FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.6,
                  child: MovieCarosalWidget(
                    movies:state.movies,
                    defultIndex:state.deafultIndex
                  ),
                ),
                FractionallySizedBox(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 0.4,
                  child: Placeholder(
                    color: Colors.blue,
                  ),
                )
              ],
            );
            }else{
              return SizedBox.shrink();
            }
            
          },
        ),
      ),
    );
  }
}
