import 'package:flutter/material.dart';
import 'package:translate_this/my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MyHomePage("Mis Contactos"),
    );
  }
}