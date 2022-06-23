import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class welcomepage extends StatelessWidget{

  String email;
  welcomepage({Key? key,required this.email}) : super(key: key);



  @override
  Widget build(BuildContext context)
  {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;

    return Scaffold(appBar: AppBar(title: Text("CloudyML",),backgroundColor: Color.fromARGB(255, 52, 129, 167),),
        body: Column(children: [
          
        Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Image(image: AssetImage("images/cloud.webp"),),
        ),
        Container(
            alignment: Alignment.center,
            child:Padding(padding: EdgeInsets.only(left: 35),child: Text(
              'Welcome to CloudyML',
              style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,),
            ))),
            Container(
            alignment: Alignment.center,child:Padding(padding: EdgeInsets.symmetric(vertical: 160),
            child: Text(
              '#Learn Data Science By Doing it',
              style: TextStyle(color: Colors.amber[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,),
            ))),

            
            // ignore: prefer_const_constructors     
            
      ],
      
    ),

          Container(
              alignment: Alignment.center,child:Padding(padding: EdgeInsets.symmetric(vertical: 5),
              child: RichText(text: TextSpan(text: " For Going to Home Page  ",style: TextStyle(color: Colors.amber[700],fontSize: 17,
                  fontWeight: FontWeight.bold),

                  children: [TextSpan(text: " Click Me",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,
                    backgroundColor:Colors.tealAccent,
                  ),
                      recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>(HomePage()))

                  )]

              )))),
    
       SizedBox(height: 40,),
        Text("Hii  "+
          email, style: TextStyle(fontSize: 18,color: Colors.grey[500]),
        ),
        SizedBox(height: 20,),

        SizedBox(height: h*0.11,)
        ,
           GestureDetector(
             onTap: (){
               AuthController.instance.logOut();
             },
             child: Container(
                  width:w*0.45,
                  height: h*0.08,
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: AssetImage("images/green.jpg"),fit: BoxFit.cover,)
                   ),
                   child:Center(child: Text("Sign out",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                   ),
                   ) 
                ),
        ),

                
        ],) 
        
    );
  }
}
