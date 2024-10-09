import 'package:flutter/material.dart';
import 'pages/firstscreen.dart';
import 'pages/homescreen.dart';
import 'pages/signin.dart';
import 'pages/signup.dart';
import 'services/fetchapi.dart';

void main() => runApp(const MyApp());

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

