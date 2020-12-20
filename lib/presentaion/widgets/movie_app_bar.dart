
import 'package:flutter/material.dart';
import 'package:flutter_clean_architech/common/constants/size_constants.dart';
import 'package:flutter_clean_architech/common/screenutils/screen_utils.dart';
import 'package:flutter_clean_architech/presentaion/widgets/logo.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../.././common/extentions/size_extention.dart';


class MovieAppBar extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
   return Padding(
     padding:  EdgeInsets.only(
       top:  ScreenUtil.statusBarHeight + Sizes.dimen_4.h,
       left:  Sizes.dimen_16.w,
       right: Sizes.dimen_16.w
     ),
     child: Row(

       children: [
         IconButton(
           onPressed: (){},
           icon: SvgPicture.asset("assets/svgs/menu.png",height: Sizes.dimen_12.h,),
         ),
         Expanded(child: const Logo(height: Sizes.dimen_14,)),
         Icon(
           Icons.search,
           color: Colors.white,
           size: Sizes.dimen_12.h,
         ),
       ],
     ),
   );



  }
}