import 'package:flutter/material.dart';

Widget appNameWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Pexels', style: TextStyle(color: Colors.black87)),
      Text('Hub', style: TextStyle(color: Colors.blue)),
    ],
  );
}