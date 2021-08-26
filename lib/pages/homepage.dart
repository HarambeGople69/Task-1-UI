import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/models/plant.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:myapp/widgets/custom_detail_tile.dart';
import 'package:myapp/widgets/our_sized_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PlantModel> plantModel = [
    PlantModel(
      plantName: "Bostan Lettuce",
      price: "1.10",
      planturl: "images/1.png",
    ),
    PlantModel(
      plantName: "Purple Cauliflower",
      price: "1.85",
      planturl: "images/2.png",
    ),
    PlantModel(
      plantName: "Savoy Cabbage",
      price: "1.45",
      planturl: "images/3.png",
    ),
  ];
  List chips = [
    "Cabbage",
    "Cucumber",
    "Cabbage",
    "Onions",
    "Potatoes",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
      // backgroundColor: Colors.red,
      // backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(15),
          vertical: ScreenUtil().setSp(15),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  // color: Colors.red,
                  height: ScreenUtil().setSp(190),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: ScreenUtil().setSp(
                              30,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Image.asset(
                          "images/4.png",
                          width: ScreenUtil().setSp(150),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 50,
                        child: Text(
                          "Vegetables",
                          style: MainBigTextStyle.copyWith(
                            fontSize: ScreenUtil().setSp(35),
                          ),
                        ),
                      ),
                      Positioned(
                        // bottom: 4,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: ScreenUtil().setSp(30),
                            ),
                            labelText: "Search",
                            labelStyle: TextStyle(
                              fontSize: ScreenUtil().setSp(20),
                              color: Color(0xff9586A8),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                ScreenUtil().setSp(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                OurSizedBox(),
                Wrap(
                  children: chips
                      .map(
                        (e) => Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setSp(4),
                          ),
                          child: ActionChip(
                            labelStyle: TextStyle(
                              color: Color(0xff9586A8),
                              fontSize: ScreenUtil().setSp(15),
                            ),
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setSp(10),
                              vertical: ScreenUtil().setSp(5),
                            ),
                            label: Text(e),
                            onPressed: () {},
                          ),
                        ),
                      )
                      .toList(),
                ),
                OurSizedBox(),
                Container(
                  height: ScreenUtil().setSp(390),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: plantModel.length,
                      itemBuilder: (context, index) {
                        return CustomDetailTile(plant: plantModel[index]);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
