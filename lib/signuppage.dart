import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/auth_controller.dart';

class Signup extends StatelessWidget
{
 const Signup({Key? key}):super(key: key);


  @override
  Widget build(BuildContext context)
  {
    var emailController=TextEditingController();
    var passwordController=TextEditingController();
    List photo=["googlep.png","gmail.png","phoneotp.png"];
    
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    

      return Scaffold(body: Column(children: [
        Container(width: w*0.8,
        height: h*0.22,decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/cloudys.png')
            ,fit: BoxFit.fill,
          )
        ),),

        
        
        SizedBox(height: 20,),

        Container(
        child:Column( children: [
          
          SizedBox(height: 10,)
          ,
          TextField(
            controller: emailController,
              cursorColor: Colors.black,
              style: TextStyle(
                color: Colors.black
              ),
              decoration: InputDecoration(
                 hintText: 'enter your Email',
              prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent),
                filled: true,
                fillColor: Colors.blue[50],
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(90)
                ),
                
              ),
            ),
          
          SizedBox(height: 10,),
          TextField(
            controller: passwordController,
            obscureText: true,
              cursorColor: Colors.black,
              style: TextStyle(
                color: Colors.black
              ),
              decoration: InputDecoration(
                 hintText: 'enter your Password',
              prefixIcon: Icon(Icons.password_outlined,color: Colors.deepOrangeAccent),
                filled: true,
                fillColor: Colors.blue[50],
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(90)
                ),
                
              ),
            ),
          
         
        ],)), 
        SizedBox(height: 10,),

        Container(child:Row(children: [
          Expanded(child:Container(),),
          
        ]) ,),
      
        SizedBox(height: 30,),

      GestureDetector(
        onTap: () {
          AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
        },
      child: Container(
                  width:w*0.45,
                  height: h*0.08,
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: AssetImage("images/grey.jpg"),fit: BoxFit.cover,)
                   ),
                   child:Center(child: Text("Sign up",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                   ),
                   ) 
                ),),
                SizedBox(height: 10,)
                ,
                RichText(text: TextSpan(text: "Have an account?",style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold,fontSize: 15
                )
                ,recognizer: TapGestureRecognizer()..onTap=()=>Get.back()
                )),
               SizedBox(height: 50,),
      Container( child: Text("Sign up using one of the following methods",style: TextStyle(color: Color.fromARGB(255, 144, 140, 140)),)),

      

      Wrap(children: List<Widget>.generate(3, (index){
          return  Padding(padding: const EdgeInsets.all(10), 
         child: CircleAvatar(radius: 30,backgroundColor: Colors.grey[500],
          child: CircleAvatar(radius:25,backgroundImage:AssetImage("images/"+photo[index]),backgroundColor: Colors.white,),));
      }))
      
      ]
      
        ));
  }
}