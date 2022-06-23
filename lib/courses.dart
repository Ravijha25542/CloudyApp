import 'package:flutter/material.dart';

import 'navigation_drawer_widget.dart';

class CoursePage extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return MaterialApp(
    
   home: Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Course'),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
     body: ListView(
      children: [
            SizedBox(height: 10,),
            dscomboCard(),
            SizedBox(height: 10,),
            pythonCard(),
            SizedBox(height: 10,),
            machinelearningcard(),
            SizedBox(height: 10,),
            awscoursesCard(),
            SizedBox(height: 10,),
            azureCard(),
            SizedBox(height: 10,),
            machinelearningcard(),
            SizedBox(height: 10,),
            mlprojectCard(),
            SizedBox(height: 10,),
            sqlCard(),
            SizedBox(height: 10,),
            


     ],),
    )

    );
    

   
  }
  Widget dscomboCard() => Card(

        shadowColor: Colors.black,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage('images/courseimages/Dscombocourse.jpg')
                ,
                
                fit: BoxFit.cover,width: 1000,),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom:0),
              child: Text(
                'Data Science Combo Course',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom: 0),
              child: Text(
                'The course is dedicated to those who wanna be a Data Scientist. Covers Machine Learning and Deep Learning concepts with Python, SQL, Stats and more from scratch. ',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Buy Now',
    style: TextStyle(fontSize: 13),
  ),
),


ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.teal,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Visit Course Now',
    style: TextStyle(fontSize: 13),
  ),
)

              ],
            )
          ],
        ),
      );
  
  Widget machinelearningcard() => Card(

        shadowColor: Colors.black,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage('images/courseimages/machinelearningcourses.png'),
                fit: BoxFit.cover,width: 1000, ),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom:0),
              child: Text(
                'Machine Learning Course',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom: 0),
              child: Text(
                'This course covers all the ML Algorithms with python from scratch with tutorial videos, assignments and ML Capstone Projects.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Buy Now',
    style: TextStyle(fontSize: 13),
  ),
),


ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.teal,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Visit Course Now',
    style: TextStyle(fontSize: 13),
  ),
)

              ],
            )
          ],
        ),
      );

      Widget azureCard() => Card(

        shadowColor: Colors.black,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage('images/courseimages/azurecourses.jpg'),
                fit: BoxFit.cover,width: 1000, ),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom:0),
              child: Text(
                'AZ-900: Azure Certification Exam Course',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom: 0),
              child: Text(
                'This course will help you to crack AZ-900 Azure Certification Exam like a Pro. It covers everything which you need to know from scratch. You will get guided tutorial videos with Practice Test Papers and Quizzes.  ',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Buy Now',
    style: TextStyle(fontSize: 13),
  ),
),


ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.teal,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Visit Course Now',
    style: TextStyle(fontSize: 13),
  ),
)

              ],
            )
          ],
        ),
      );

      Widget sqlCard() => Card(

        shadowColor: Colors.black,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage('images/courseimages/sqlcourses.jpg'),
                fit: BoxFit.cover,width: 1000, ),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom:0),
              child: Text(
                'SQL Course',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom: 0),
              child: Text(
                'Covers everything from basics. Important parts of SQL like basic queries, aggregate function, joins, union, case, etc are covered in this course from scratch with practice assignments and videos.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Buy Now',
    style: TextStyle(fontSize: 13),
  ),
),


ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.teal,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Visit Course Now',
    style: TextStyle(fontSize: 13),
  ),
)

              ],
            )
          ],
        ),
      );

      Widget pythonCard() => Card(

        shadowColor: Colors.black,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage('images/courseimages/pythoncourses.jpg'),
                fit: BoxFit.cover,width:1000 , ),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom:0),
              child: Text(
                'Python For Data Science Course',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom: 0),
              child: Text(
                'Complete Python course for beginners in Data Science. It covers topics like Python fundamentals, NumPy, Pandas, Regular Expression, Data Structure, EDA etc from scratch.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Buy Now',
    style: TextStyle(fontSize: 13),
  ),
),


ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.teal,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Visit Course Now',
    style: TextStyle(fontSize: 13),
  ),
)

              ],
            )
          ],
        ),
      );

      Widget interviewCard() => Card(

        shadowColor: Colors.black,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage('images/courseimages/interviewquestioncourses.png'),
                fit: BoxFit.cover,width: 1000, ),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom:0),
              child: Text(
                'Interview QnA Package',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom: 0),
              child: Text(
                'In this package, you are getting more than 400 Data Science interview QnAs. It will be company wise and topic wise interview QnA pdf collection and also there will be some explained interview question solution videos. ',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Buy Now',
    style: TextStyle(fontSize: 13),
  ),
),


ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.teal,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Visit Course Now',
    style: TextStyle(fontSize: 13),
  ),
)

              ],
            )
          ],
        ),
      );

      Widget awscoursesCard() => Card(

        shadowColor: Colors.black,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage('images/courseimages/awscourses.jpg'),
                fit: BoxFit.cover,width: 1000,),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom:0),
              child: Text(
                'AWS Cloud Computing Course',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom: 0),
              child: Text(
                'In this Cloud Computing course of AWS, you will be learning about all the important services of AWS and get inside look and understanding of working on AWS Cloud. This course is also from scratch. ',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Buy Now',
    style: TextStyle(fontSize: 13),
  ),
),


ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.teal,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Visit Course Now',
    style: TextStyle(fontSize: 13),
  ),
)

              ],
            )
          ],
        ),
      );

      Widget mlprojectCard() => Card(

        shadowColor: Colors.black,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage('images/courseimages/machinelearningproject.jpg'),
                fit: BoxFit.cover,width: 1000, ),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom:0),
              child: Text(
                'Machine Learning Course',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17).copyWith(bottom: 0),
              child: Text(
                'This course covers all the ML Algorithms with python from scratch with tutorial videos, assignments and ML Capstone Projects.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Buy Now',
    style: TextStyle(fontSize: 13),
  ),
),


ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.teal,
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
  child: const Text(
    'Visit Course Now',
    style: TextStyle(fontSize: 13),
  ),
)

              ],
            )
          ],
        ),
      );
}