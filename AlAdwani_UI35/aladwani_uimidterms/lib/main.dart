//Default Library
import 'package:flutter/material.dart';
//Pages
import 'pages/screens/firstscreen.dart';
import 'pages/screens/homescreen.dart';
import 'pages/signing/signin.dart';
import 'pages/signing/signup.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      title: 'Compyut!',
      debugShowCheckedModeBanner: false,

      initialRoute: '/firstscreen',

      routes:  {
        '/firstscreen': (context) => const FirstScreen(),
        '/signin': (context) => const SignIn(),
        '/signup': (context) => const SignUp(),
        '/homescreen': (context) => const HomeScreen(),
      },
    );
  }
}

