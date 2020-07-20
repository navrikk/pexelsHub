import 'package:flutter/material.dart';

Widget appLogo() {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      children: <TextSpan>[
        TextSpan(
          text: 'Pexels', 
          style: TextStyle(
            color: Colors.black87,
          )
        ),
        TextSpan(
          text: 'Hub', 
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ]
    ),
  );
}
