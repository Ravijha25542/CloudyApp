

import 'package:flutter/material.dart';
import 'package:flutter_application_1/courses.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/interview.dart';
import 'package:flutter_application_1/jobinterviews.dart';
import 'package:flutter_application_1/notification.dart';
import 'package:flutter_application_1/userpage.dart';
import 'about.dart';
import 'blogs.dart';
import 'notification.dart';
import 'updates.dart';

class NavigationDrawerWidget extends StatelessWidget{
final padding=EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context)
  {
    final name='Ravi Kumar';
    final email='Ravijha25542@gmail.com';
    final urlImages=Image(image: AssetImage("images/RaviKumar.jpg"));
    final urlImage="https://media-exp1.licdn.com/dms/image/C4E03AQHbRpV_I9Xz4Q/profile-displayphoto-shrink_800_800/0/1641609883577?e=1660780800&v=beta&t=uuru4R3i73Mxu1eRKDehGv4-evANyDmSM9MW5fm6EE8";
    return Drawer(
      child: Material(
        color:Colors.blueAccent,
        child: ListView(
          
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked:()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserPage(
                name: name,
                 urlImage: urlImage)))
            ),
            Container(
            padding: padding,
              child: Column(
                children: [ 
                  const SizedBox(height: 12),
                  buildSearchField(),
                  const SizedBox(height: 24),
            
          
        buildMenuItem(text:'Home',icon:Icons.home,
        onClicked: ()=>selectedItem(context,0)),

        const SizedBox(height: 16),
        buildMenuItem(text:'Courses',icon:Icons.book,
        onClicked: ()=>selectedItem(context,1)),


        const SizedBox(height: 16),
        buildMenuItem(text:'Job Interviews',icon:Icons.work,
        onClicked: ()=>selectedItem(context,2)),

        const SizedBox(height: 16),
        buildMenuItem(text:'Interview Q&As',icon:Icons.question_answer,
        onClicked: ()=>selectedItem(context,3)),

        const SizedBox(height: 16),
        buildMenuItem(text:'Blogs',icon:Icons.chat,
        onClicked: ()=>selectedItem(context,4)),

        const SizedBox(height: 16),
        Divider(color: Colors.white),
        const SizedBox(height: 16),


        const SizedBox(height: 16),
        buildMenuItem(text:'Updates',icon:Icons.update,
        onClicked: ()=>selectedItem(context,5)),

        

        const SizedBox(height: 16),
        buildMenuItem(text:'About',icon:Icons.people_outline_rounded,
        onClicked: ()=>selectedItem(context,6)),

        const SizedBox(height: 16),
        buildMenuItem(text:'Notifications',icon:Icons.notification_add,
        onClicked: ()=>selectedItem(context,7)),

        const SizedBox(height: 16),
        buildMenuItem(text:'Back',icon:Icons.arrow_back,
        onClicked: ()=>selectedItem(context,8)
        ),

        ],))],
        ),
      ),

    );
  }
  Widget buildHeader(
    {
      required String urlImage,
      required String name,
      required String email,
      required VoidCallback onClicked,
    }
  )=>InkWell(
      onTap: onClicked,
      child: Container(
        padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
        child: Row(children: [

          CircleAvatar(radius: 35,backgroundImage: NetworkImage(urlImage),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 20,color: Colors.white),
              ),
              const SizedBox(height:4),
              Text(email,style: TextStyle(fontSize: 13,color: Colors.white),
              )
            ],
          ),
          

        ]),
        ),
   );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }



  Widget buildMenuItem({
    required String text, 
    required IconData icon,
    VoidCallback? onClicked,}) 
    { 
    final Color=Colors.white;
    final hoverColor=Colors.white;
    return ListTile(
      leading: Icon(icon,color: Colors.white),
      title: Text(text,style: TextStyle(color: Colors.white),),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
    void selectedItem(BuildContext context,int index)
    {
      Navigator.of(context).pop();
      switch (index)
      {
        case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>HomePage(),));
          break;

        case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>CoursePage(),));
          break;

        case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>JobinterviewsPage(),));
          break;

        case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>InterviewPage(),));
          break;

        case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>BlogsPage(),));
          break; 
        
        case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>UpdatesPage(),));
          break;
        
        case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>Aboutus(),));
          break;
        
        case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>NotificationPage(),));
          break;
        
        case 8:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>HomePage()));
          break;
      }
    }

}