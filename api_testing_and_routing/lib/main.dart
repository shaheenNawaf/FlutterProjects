import 'package:api_testing_and_routing/page1.dart';
import 'package:api_testing_and_routing/page2.dart';
import 'package:flutter/material.dart';


void main() => runApp(const myApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Routing App',
      debugShowCheckedModeBanner: false,
      
      //routing starts here
      initialRoute: '/',

      routes: {

      }

  
    );
  }
}


