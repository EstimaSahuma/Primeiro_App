import 'package:flutter/material.dart';
import 'loginPage.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // 
    
    return new MaterialApp(
      title: 'Flutter and Firebase Login',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );
  }
}
