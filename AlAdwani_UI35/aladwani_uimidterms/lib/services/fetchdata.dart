import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:aladwani_uimidterms/models/products.dart';


class ScrapeData{
  Future<List<Products>> fetchData() async {
    List<Products> products = [];
    final getdata = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    
    if (getdata.statusCode == 200){
      //Making sure that we can successfully connect with the given URI to scrape for information

      var jsonData = jsonDecode(getdata.body);
      //print(jsonData);

      for (var item in jsonData){
        products.add(Products.fromJson(item)); //Direct filter to the data present in the json
      }

      //Just checking for debugging
      for (var product in products){
        print('Name: ${product.name}, Price: ${product.price}, Rating: ${product.prodRating}');
      }
    }else{
      throw Exception("Failed to get data");
    }
    return products;
  }
}


