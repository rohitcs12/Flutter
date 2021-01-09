import 'package:flutter/material.dart';
Widget appbar(BuildContext context)
{
  return RichText(
    text: TextSpan(
      text: null,
      style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w900),
      children: <TextSpan>[
        TextSpan(text: 'Quiz',style:TextStyle(color:Colors.blue)),
        TextSpan(text: 'Application',style:TextStyle(color:Colors.black87)),

      ]
    ),
  );
}