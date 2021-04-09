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
                  margin: EdgeInsets.only(top: 20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/github.png"),
                    radius: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

