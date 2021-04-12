import 'package:flutter/material.dart';
import 'package:sample/shared/drawer.dart';

class HobbiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Hobbies"),
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
              leading: Icon(Icons.gamepad,size: 60,color: Colors.black,),
              title: Column(
                children: [
                  Text('Gaming',style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontFamily: 'Lobster'),),
                  SizedBox(height: 6,),
                  Text('CSGO, Valorant, Forza',style: TextStyle(
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
              leading: Icon(Icons.camera,size: 60,color: Colors.black,),
              title: Column(
                children: [
                  Text('Photography',style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontFamily: 'Lobster'),),
                  SizedBox(height: 6,),
                  Text('Nikon D5600, Nikon B700',style: TextStyle(
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
              leading: Icon(Icons.book_sharp,size: 60,color: Colors.black,),
              title: Column(
                children: [
                  Text('Reading Novels',style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontFamily: 'Lobster'),),
                  SizedBox(height: 6,),
                  Text('Paulo Coelho, Jack Reacher',style: TextStyle(
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