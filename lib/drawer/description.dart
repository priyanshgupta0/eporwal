// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

class Description extends StatelessWidget {
  const Description({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
      ),
      // ignore: avoid_unnecessary_containers
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      
                      
                      Text("Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold),),
                      
                     
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("Address :- ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("Indore[M.p.]")
                        ],
                      ),
                     
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                         
                          
                          Text("Contact :-",
                         
                          
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          InkWell(
                            onTap: (){
                                launch("tel://21213123123");
                            },
                            child: Text(" 9999999999",style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),),
                          )
                        ],
                      ),
                      
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("Active Member's :- ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("20"),
                        ],
                      ),
                      
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("Established In :- ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("2016"),
                        ],
                      ),
                    ],
                  ),
                ),
            ),
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Card(
             
                  child: ListTile(
                   
                    leading: CircleAvatar(
                      
                      backgroundImage: AssetImage("assets/images/wear_mask.png"),
                    ),
                    
                    title: Text("Name"),
                    
                    subtitle: Text("Post"),
                  ),
                 ),
      
                 Card(
             
              child: ListTile(
               
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                
                title: Text("Name"),
                
                subtitle: Text("Post"),
              ),
            ),
      
            Card(
             
              child: ListTile(
               
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                
                title: Text("Name"),
                
                subtitle: Text("Post"),
              ),
            ),
      
            Card(
             
              child: ListTile(
               
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                
                title: Text("Name"),
                
                subtitle: Text("Post"),
              ),
            ),
      
            Card(
             
              child: ListTile(
               
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                
                title: Text("Name"),
                
                subtitle: Text("Post"),
              ),
            ),
      
            Card(
             
              child: ListTile(
               
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                
                title: Text("Name"),
                
                subtitle: Text("Post"),
              ),
            ),
      
            Card(
             
              child: ListTile(
               
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                
                title: Text("Name"),
                
                subtitle: Text("Post"),
              ),
            ),
      
            Card(
             
              child: ListTile(
               
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                
                title: Text("Name"),
                
                subtitle: Text("Post"),
              ),
            ),
      
            Card(
             
              child: ListTile(
               
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                
                title: Text("Name"),
                
                subtitle: Text("Post"),
              ),
            ),
      
            Card(
             
              child: ListTile(
               
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                
                title: Text("Name"),
                
                subtitle: Text("Post"),
              ),
            ),
      
            Card(
             
              child: ListTile(
               
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                
                title: Text("Name"),
                
                subtitle: Text("Post"),
              ),
            ),
                ],
              ),
      
            
            ],
          ),
          
        ),
      ),
    );
  }
}