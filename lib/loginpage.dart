import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_controller.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:get/get.dart';

import 'package:flutter_application_1/signuppage.dart';
import 'package:flutter_application_1/welcome.dart';

import 'signuppage.dart';



class LoginPage extends StatefulWidget
{
  @override
  _MyLoginPageState createState()=>_MyLoginPageState();
}
class _MyLoginPageState extends State <LoginPage>
{

    var emailController=TextEditingController();
    var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    

      return Scaffold(body: Column(children: [
        Container(width: w,
        height: h*0.22,decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/cloudys.png')
            ,fit: BoxFit.fill,
          )
        ),),

        Container(width: w,height: h*0.12,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
          Text("Hello",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
          Text("Sign into your account",style: TextStyle(fontSize: 14,color: Colors.grey[600]),)],)),
        
        SizedBox(height: 20,),

        Container(
        child:Column( children: [
          TextField(
            controller: emailController,
            
            decoration: InputDecoration(
              hintText: 'enter your Email',
              prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide
              (color:Colors.red,width:2.0 )),

              enabledBorder: OutlineInputBorder
              (borderSide: BorderSide(
                color: Colors.grey,
                width:2.0
              )),

              
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: passwordController,
            obscureText: true,
            
            decoration: InputDecoration(
              hintText: 'enter your Password',
              prefixIcon: Icon(Icons.password_outlined,color: Colors.deepOrangeAccent),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide
              (color:Colors.red,width:2.0 )),

              enabledBorder: OutlineInputBorder
              (borderSide: BorderSide(
                color: Colors.grey,
                width:2.0
              )),

              
            ),
          ),
         
        ],)), 
        SizedBox(height: 10,),

        Container(child:Row(children: [
          Expanded(child:Container(),),
          Text("Forget your password?  ",style: TextStyle(color: Color.fromARGB(255, 144, 140, 140)),)
        ]) ,),
      
        SizedBox(height: 40,),

      
       GestureDetector(
         onTap: (() {
           AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
         })
         ,
       child:Container(
                  width:w*0.45,
                  height: h*0.08,
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: AssetImage("images/grey.jpg"),fit: BoxFit.cover,)
                   ),
                   child:Center(child: Text("Sign in",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54),
                   ),
                   ) 
                ),),
      
      
      
        SizedBox(height: 70,),

      RichText(text: TextSpan(text: "Don\'t have an account? ",style: TextStyle(color: Colors.grey[500],fontSize: 18),
       
      children: [TextSpan(text: "Create",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
      ), 
      recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>(Signup()))
      
      )]

      )),
      ]
      
        ));
  }
}