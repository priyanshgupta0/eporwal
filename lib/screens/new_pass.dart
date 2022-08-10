// ignore_for_file: prefer_const_constructors

import 'package:e_porwal/screens/log_in.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                
                Image.asset("assets/images/wear_mask.png"),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Set New Password",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("New Password")
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("Confirm Password")
                    ),
                  ),
                ),
                SizedBox(
                  width: 350,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                         MaterialPageRoute(builder: (context)=>Login()));
                      }, child: Text("Done"),
                         style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(25),
                           ),
                         ),
                      
                      ),
                  ),
                )

              ],
              
            ),
          ),
        ),
      ),
    );
  }
}