

import 'package:flutter_clean_architech/common/screenutils/screen_utils.dart';



extension SizeExtention on num{
 num get w => ScreenUtil().setWidth(this);
 num get h =>ScreenUtil().setHeight(this);
 num get sp =>ScreenUtil().setSp(this);

}

