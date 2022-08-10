import 'dart:async';
// ignore: unused_import
import 'package:e_porwal/screens/edit_profile.dart';
import 'package:e_porwal/screens/log_in.dart';
import 'package:flutter/material.dart'; 

// ignore: use_key_in_widget_constructors
class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
         // ignore: prefer_const_constructors
         Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            // ignore: prefer_const_constructors
            builder: (BuildContext context) =>  Login()
            )
            )
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text("Porwal's",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
      // seconds: 3,
      // navigateAfterSeconds: HomeScreen(),
      // title: Text(
      //   'Porwals',
      //   style: TextStyle(
      //     fontSize: 25,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      // backgroundColor: Colors.red,
      // useLoader: false,

      // image: new Image.network('https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
      // loadingText: Text("Loading"),
      // photoSize: 100.0,
      // loaderColor: Colors.blue,
    );
  }
}










//     //imageCache?.clear();

//     // Image.asset("assets/images/wear_mask.png");
//     return Scaffold(
      
//       body: SafeArea(
//         child: SizedBox(
//           width: double.infinity,
//           child: Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welocme to porwal parivar:",
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
                
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
