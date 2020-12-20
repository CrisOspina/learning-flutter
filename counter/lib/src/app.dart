import 'package:flutter/material.dart';
import 'package:counter/src/pages/counter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counter(), 
    );
  }
}
