import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      child: Center(
        child: Text(
          'Hello World', textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 32,color: Colors.black87),
        ),
      ),
    );
  }
}