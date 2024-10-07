import 'package:aladwani_uimidterms/firstscreen.dart';
import 'package:aladwani_uimidterms/homescreen.dart';
import 'package:aladwani_uimidterms/signin.dart';
import 'package:aladwani_uimidterms/signup.dart';
import 'package:flutter/material.dart';

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

