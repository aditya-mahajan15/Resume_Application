import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/shared/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeScreen extends StatelessWidget {

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Contact Me"),
        centerTitle: true,
        leading: null,
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  const url = 'https://github.com/aditya-mahajan15';
                  launchURL(url);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 40),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/github.png"),
                        radius: 50,
                      ),
                      SizedBox(width: 30,),
                      Text("Github",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  const url = 'https://www.linkedin.com/in/aditya-mahajan-4b63981a5/';
                  launchURL(url);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 40),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/linkedin1.png"),
                        radius: 50,
                      ),
                      SizedBox(width: 30,),
                      Text("LinkedIn",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.greenAccent),
                child: ListTile(
                  horizontalTitleGap: 20,
                    leading: Icon(Icons.email,size: 40,color: Colors.black,),
                  title: Text('mahajanaditya0115@gmail.com',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.greenAccent),
                child: ListTile(
                  horizontalTitleGap: 20,
                  leading: Icon(Icons.phone,size: 40,color: Colors.black,),
                  title: Text('+91 94191XXXXX',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

