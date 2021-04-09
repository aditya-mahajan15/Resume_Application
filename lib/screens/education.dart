import 'package:flutter/material.dart';
import 'package:sample/shared/drawer.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Education"),
        centerTitle: true,
        leading: null,
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,width: 30,),
            ListTile(
              horizontalTitleGap: 50,
              leading: Icon(Icons.school,size: 60,color: Colors.black,),
              title: Column(
                children: [
                  Text('Jodhamal Public School',style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontFamily: 'Lobster'),),
                  SizedBox(height: 6,),
                  Text('SSC - 10.0 CGPA or 95%',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.blueAccent,
                      fontFamily: 'Lobster'),),
                ],
              ),
            ),
            SizedBox(height: 40,),
            ListTile(
              horizontalTitleGap: 50,
              leading: Icon(Icons.school,size: 60,color: Colors.black,),
              title: Column(
                children: [
                  Text('Jodhamal Public School',style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontFamily: 'Lobster'),),
                  SizedBox(height: 6,),
                  Text('HSC - 88% Non-Medical',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.blueAccent,
                      fontFamily: 'Lobster'),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}