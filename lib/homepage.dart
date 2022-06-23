

import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation_drawer_widget.dart';


class HomePage extends StatefulWidget
{

  @override
  _MyHomePageState createState()=>_MyHomePageState();
}
class _MyHomePageState extends State <HomePage>
{
  @override
  Widget build(BuildContext context){
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    
    return MaterialApp(
    
    home: Scaffold(
    drawer: NavigationDrawerWidget(),
      appBar: AppBar(title: Text("Home"),
      centerTitle: true,
      backgroundColor: Colors.green,
      ),



      body: ListView(children: [
       
        Container(child: Image(image: AssetImage("images/intro.png")),),
        
        Container(child: Text("What We do at CloudyML?",style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 211, 47, 145),
        fontWeight: FontWeight.bold),)),
        SizedBox(height: 10,),
        Container(child: Text("Unlike any other online courses we believe in Learn By Doing concept, Which means from the very first day you will learn your lessons by practicing them side by side.",style: TextStyle(fontSize: 20,color: Colors.black,
        fontWeight: FontWeight.bold),),),
        SizedBox(height: 12,),
        Container(child: Text("Here we are sharing Hands-on Guided Assignment, Real-World Project with 1-1 Live Personal Doubt Clearance support on Skype Support everyday.",style: TextStyle(fontSize: 20,color: Colors.blueGrey,
        fontWeight: FontWeight.bold),),),
        SizedBox(height: 12,),
        Container(child: Text("Our courses will make you technically strong enough so you can crack any Data Science/ Analytics Interview from scratch.",style: TextStyle(fontSize: 20,color: Colors.black,
        fontWeight: FontWeight.bold),),),
        SizedBox(height: 12,),
        
        
        Container(child: Image(image: AssetImage("images/becomepro.png")),),

        Container(child: Image(image: AssetImage("images/showoff.png")),),
        Container(decoration: BoxDecoration(color: Colors.black),height: h*0.13,width: w,
        child: Column(
          children: [
            Container(child: Image(image: AssetImage("images/cloudys.png"),height: 90,),
            ),
            
           // Container(child: Text("Contact Us",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
           // Container(child: Text("team@cloudyml.com",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
           // Container(child: Text("+918587911971 ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
           // SizedBox(height: 17,),
           // Container(child: Text("Terms and Conditions",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
           // Container(child: Text("About ",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
           // Container(child: Text("Help",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
          
          

            
          ],
        )
         ),
         
         
      ]
      
      ),

      
   
      
    )
    ,
    );
    
  }
  
}