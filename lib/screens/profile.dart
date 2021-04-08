import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(title: Text("My Profile"),centerTitle: true,leading: null,),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/icon.png"),
                  radius: 100,
                ),
              ),
              SizedBox(height: 10,),
              Text("Aditya Mahajan",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              Text("Flutter Developer",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.white),),
              SizedBox(height: 20,),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(120),
                child: Column(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
