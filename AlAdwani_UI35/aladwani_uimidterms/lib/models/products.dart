class Products {
  int id;
  String name;
  double price;
  String description;
  String category;
  String imageUrl;
  double prodRating;
  int prodQuantity;

  //Constructor
  //{} allows for us to provide arguments to a function or another constructor in ANY order
  //Hence this works with the factory Products.fromJson since that's another constructor for this method referencing this class 

  Products({required this.id,required this.name, required this.price, required this.description, required this.category, required this.imageUrl, required this.prodRating,required this.prodQuantity});

  //Accepting from JSON
  factory Products.fromJson(Map<String, dynamic> json) { 
    return Products(
      id: json['id'], 
      name: json['title'], 
      price: (json['price'] as num).toDouble(), 
      description: json['description'], 
      category: json['category'], 
      imageUrl: json['image'], 
      prodRating: (json['rating']['rate']as num).toDouble(), 
      prodQuantity: json['rating']['count'],
      );
    }
}