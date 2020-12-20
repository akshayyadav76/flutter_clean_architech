



import 'package:flutter/material.dart';
import '../.././common/extentions/size_extention.dart';

class Logo extends StatelessWidget{
final double height;

const Logo({Key key,@required this.height})
:assert(height != null,"height must not be null"),
 assert(height >0,"height must be grater than 0"),super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assests/pngs/logo.png",color:Colors.white,height: height.h,);
  }


}