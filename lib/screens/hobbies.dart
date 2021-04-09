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
    );
  }
}