import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/pages/cart.dart';
import 'package:myapp/pages/homepage.dart';
import 'package:myapp/pages/setting.dart';

class DasHboard extends StatefulWidget {
  const DasHboard({Key? key}) : super(key: key);

  @override
  _DasHboardState createState() => _DasHboardState();
}

class _DasHboardState extends State<DasHboard> {
  int currentIndex = 0;
  // ignore: non_constant_identifier_names
  Widget show_page = HomePage();

  Widget check_postion(int index) {
    switch (index) {
      case 0:
        return HomePage();

      case 1:
        return Cart();

      case 2:
        return Setting();

      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: show_page,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff7203FF),
          unselectedItemColor: Colors.grey[500],
          selectedIconTheme: IconThemeData(
            size: ScreenUtil().setSp(25),
            // color: Color(0xff7203FF),
          ),
          unselectedIconTheme: IconThemeData(size: ScreenUtil().setSp(20)),
          onTap: (value) {
            setState(() {
              currentIndex = value;
              show_page = check_postion(currentIndex);
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Person",
            ),
          ]),
    );
  }
}
