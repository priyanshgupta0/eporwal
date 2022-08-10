import 'package:e_porwal/screens/new_pass.dart';
import 'package:flutter/material.dart';

class EnterOtp extends StatelessWidget {
  const EnterOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Image.asset("assets/images/wear_mask.png"),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  // ignore: prefer_const_constructors
                  child: Text("One Time Password",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        label: Text("Enter OTP")),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // ignore: prefer_const_constructors
                                builder: (context) => NewPassword()));
                      },
                      // ignore: prefer_const_constructors
                      child: Text("Next"),
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
    );
  }
}
