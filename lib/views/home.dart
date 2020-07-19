import 'package:flutter/material.dart';
import 'package:pexelsHub/widgets/app_name_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppNameWidget(),
        elevation: 0.0,
      ),
    );
  }
}
