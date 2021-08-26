import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final Function function;
  final Color backgroundColor;
  final Widget widget;
  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.widget,required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        function();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(10),
          vertical: ScreenUtil().setSp(5),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              ScreenUtil().setSp(5),
            ),
            color: backgroundColor),
            child: widget,
      ),
    );
  }
}
