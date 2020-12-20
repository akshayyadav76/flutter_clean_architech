
import 'package:flutter/material.dart';
import 'package:flutter_clean_architech/common/screenutils/screen_utils.dart';
import 'package:flutter_clean_architech/presentaion/screens/home/home_screen.dart';
import 'package:flutter_clean_architech/presentaion/themes/app_color.dart';
import 'package:flutter_clean_architech/presentaion/themes/text_theme.dart';

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primaryColor: AppColor.vulcan,
        scaffoldBackgroundColor: AppColor.vulcan,
        textTheme: ThemeText.getTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          elevation: 0
        )
        
      ),
      home: HomeScreen(),
    );
  }
}