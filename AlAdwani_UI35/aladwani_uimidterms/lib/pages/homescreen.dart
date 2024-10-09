import 'package:aladwani_uimidterms/services/FetchAPI.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.meals});
  final List<FetchAPI> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: const BoxDecoration(
          color: Color(0xFF003fba)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, '/firstscreen');
                },
            ),// Center the image
            Center(
              child: Image.asset('assets/icon.jpg'),
            ),
            ListView.builder(
              itemCount: meals.length,
              itemBuilder: (context, index) {
                final meal = meals[index]; //Accessing the meals inside the class meals
                //Cards
                return ListTile(
                  title: Text(meal.mealName),
                  subtitle: Text(meal.mealsId),
                  leading: Image.network(meal.urlImage),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}