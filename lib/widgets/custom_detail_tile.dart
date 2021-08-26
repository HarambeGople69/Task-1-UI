import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/models/plant.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_button.dart';

import 'our_sized_box.dart';

class CustomDetailTile extends StatefulWidget {
  final PlantModel plant;
  const CustomDetailTile({
    Key? key,
    required this.plant,
  }) : super(key: key);

  @override
  _CustomDetailTileState createState() => _CustomDetailTileState();
}

class _CustomDetailTileState extends State<CustomDetailTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: ScreenUtil().setSp(3),
      ),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                ScreenUtil().setSp(10),
              ),
              child: Image.asset(
                widget.plant.planturl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: ScreenUtil().setSp(20),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.plant.plantName,
                  style: MainMidTextStyle,
                ),
                OurSizedBox(),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "${widget.plant.price}", style: MainBigTextStyle
                          // style: paratext,
                          ),
                      TextSpan(
                        text: '/kg',
                        style: TextStyle(
                          color: Color(
                            0xff9586A8,
                          ),
                          fontWeight: FontWeight.w600,
                          fontSize: ScreenUtil().setSp(15),
                        ),
                      )
                    ],
                  ),
                ),
                OurSizedBox(),
                Row(
                  // mainAxisAlignment:
                  //     MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      function: () {},
                      backgroundColor: Colors.white,
                      widget: Icon(
                        Icons.favorite_outline,
                        size: ScreenUtil().setSp(25),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setSp(20),
                    ),
                    CustomButton(
                      function: () {},
                      backgroundColor: Color(0xff0bce83),
                      widget: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: ScreenUtil().setSp(25),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
