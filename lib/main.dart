import 'package:e_porwal/business_list/business1.dart';
import 'package:e_porwal/drawer/business.dart';
import 'package:e_porwal/drawer/members.dart';
import 'package:e_porwal/screens/home_screen.dart';
import 'package:e_porwal/screens/log_in.dart';
import 'package:e_porwal/screens/profile.dart';
import 'package:e_porwal/screens/splash_screen.dart';
import 'package:e_porwal/screens/user_detailed_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-Porwal',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      // ignore: prefer_const_constructors
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// class Splash2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 6,
//        navigateAfterSeconds: new SecondScreen(),
//        title: new Text('GeeksForGeeks',textScaleFactor: 2,),
//       // image: new Image.network('https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
//       // loadingText: Text("Loading"),
//       // photoSize: 100.0,
//       // loaderColor: Colors.blue,
//     );
//   }
// }



// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("GeeksForGeeks")),
//       body: Center(
//         child:Text("Home page",textScaleFactor: 2,)
//       ),
//     );
//   }
// }