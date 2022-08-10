import 'package:e_porwal/screens/forgot.dart';
import 'package:e_porwal/screens/home_screen.dart';
import 'package:e_porwal/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Image.asset("assets/images/wear_mask.png"),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Welcome To Porwal Community:",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 50),
                  // ignore: prefer_const_constructors
                  //Spacer(flex: 1),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    // ignore: prefer_const_constructors
                    child: TextField(
                    
                      //obscureText: true,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        label: Text(
                          "User Name",
                          // ignore: prefer_const_constructors
                          style: TextStyle(),
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 5),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    // ignore: prefer_const_constructors
                    child: TextField(
                      obscureText: true,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        label: Text(
                          "Password",
                          // ignore: prefer_const_constructors
                          style: TextStyle(),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 350,
                    height: 80,
                    child: Padding(
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  // ignore: prefer_const_constructors
                                  builder: (context) => HomeScreen()));
                        },
                        // ignore: prefer_const_constructors
                        child: Text(
                          "LOGIN",
                        ),
                        // ignore: prefer_const_constructors
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            // ignore: prefer_const_constructors
                            builder: (context) => ForgotPassword()),
                      );
                    },
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Forgot Password ?",
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text("OR"),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Text("Do not have a account ?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // ignore: prefer_const_constructors
                                    builder: (context) => SignUp()),
                              );
                            },
                            // ignore: prefer_const_constructors
                            child: Text("Sign Up"))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
     

// class Customshape extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     //double height = size.height;
//     //double width = size.width;

//     var path = Path();
//     path.lineTo(0, size.height - 80);
//     path.quadraticBezierTo(
//         size.width / 2, size.height, size.width, size.height - 80);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
