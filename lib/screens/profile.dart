import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sample/shared/drawer.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
        leading: null,
      ),
      drawer: MainDrawer(),
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
              SizedBox(
                height: 10,
              ),
              Text(
                "Aditya Mahajan",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'I\'m 21 Years Old.',
                        style: kText,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'I\'m PreFinal Year Student.',
                        style: kText,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Studying at VIT.',
                        style: kText,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'I\'m CSE Major.',
                        style: kText,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

var kText = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.white,
    fontFamily: 'Lobster');
