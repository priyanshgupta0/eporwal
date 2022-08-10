import 'package:e_porwal/screens/enter_otp.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // ignore: prefer_const_constructors
        leading: BackButton(color: Colors.black),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Image.asset("assets/images/wear_mask.png"),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Forgot Password",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 100, 16, 36),
                    // ignore: prefer_const_constructors
                    child: TextField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                          // ignore: prefer_const_constructors
                          label: Text("Enter Mobile Number Or Email")),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              // ignore: prefer_const_constructors
                              builder: (context) => EnterOtp()),
                          );
                        },
                        // ignore: prefer_const_constructors
                        child: Text("Send OTP"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
