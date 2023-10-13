import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'clspage.dart';
import 'eligibiltypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"State management Provider",
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home:elibilityscreen(),
    );
  }
}

