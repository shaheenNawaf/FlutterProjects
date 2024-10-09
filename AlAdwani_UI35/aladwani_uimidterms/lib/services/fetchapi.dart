import 'package:aladwani_uimidterms/models/meals.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; //dart:convert to us to use JSONDecode function to separate the data based on their given IDs from the JSON Data
//Trying to use the basic HTTP flutter package
class FetchAPI {

  //Future class allows the backend or rather this class to have a delay, in this case the delay/asynch operation allows us to get information from the JSON file and to ensure that it's present -- hence the Try-Catch being used as well.
  Future<void> getFilipinoApi() async {

    //Will store the data
    final getData = await http.get(Uri.parse("https://www.themealdb.com/api/json/v1/1/filter.php?a=Filipino"));

    try {
      if(getData.statusCode == 200){
        final mealsData = jsonDecode(getData.body);
        
        for (var meal in mealsData['meals']) {
          print(meal["strMeal"]);
          print(meal["strMealThumb"]);
          print(meal["idMeal"]);

          String id = meal["idMeal"].toString();
          String name = meal["strMeal"].toString();
          String imgUrl = meal['strMealtThumb'].toString();

          Meals oneMeal = Meals(id, name, imgUrl);
        }
      }else{
        print('Error: Status Code ${getData.statusCode}');
      }
    } catch (ex) {
      print('Exception: $ex');
    }
  }
}