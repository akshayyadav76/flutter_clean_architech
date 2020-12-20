

import 'package:flutter/material.dart';
import 'package:flutter_clean_architech/common/constants/size_constants.dart';
import 'package:flutter_clean_architech/common/screenutils/screen_utils.dart';
import 'package:flutter_clean_architech/presentaion/themes/text_theme.dart';
import '../../common/extentions/size_extention.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("my app see"),),
      body: Center(child:Text("try the size",style: TextStyle(fontSize: Sizes.dimen_80,))),
    );
  }
}