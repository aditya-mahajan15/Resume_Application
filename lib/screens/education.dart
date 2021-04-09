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
    );
  }
}