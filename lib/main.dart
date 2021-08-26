import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/pages/dashboard.dart';
import 'package:myapp/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
    );
    return ScreenUtilInit(
      builder: () => MaterialApp(
          // locale: DevicePreview.locale(context), // Add the locale here
          // builder: DevicePreview.appBuilder,
          theme: ThemeData(
              // scaffoldBackgroundColor: Color(0xffF6F5F5)
              ),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          //  theme: ThemeData.dark(),
          home: DasHboard()),
    );
  }
}
