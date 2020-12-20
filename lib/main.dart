
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architech/di/git_it.dart' as getIt;
import 'package:flutter_clean_architech/presentaion/widgets/movie_app.dart';
import 'package:pedantic/pedantic.dart';



void main()async{
 WidgetsFlutterBinding.ensureInitialized();
 unawaited(SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
 unawaited(getIt.init());
 runApp(MovieApp());

}