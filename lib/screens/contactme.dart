import 'package:flutter/material.dart';
import 'package:sample/shared/drawer.dart';

class ContactMeScreen extends StatelessWidget {
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
    );
  }
}
