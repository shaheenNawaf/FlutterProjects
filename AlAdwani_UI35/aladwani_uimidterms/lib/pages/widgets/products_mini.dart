import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/products.dart';
import 'products_details_screen.dart';

class ProductCard extends StatelessWidget {
  final Products product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell( // Wrap the Card with InkWell
      onTap: () {
        // Handle navigation to the details screen here
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(product: product),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: SizedBox(
                child: Image.network(
                  product.imageUrl,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.name,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: const Color.fromARGB(255, 0, 0, 0),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const FaIcon(
                      FontAwesomeIcons.tag,
                      color: Color(0xFF003fba),
                      size: 15
                  ),
                  Text(
                    product.category.toUpperCase(),
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const FaIcon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xFF003fba),
                      size: 15
                  ),
                  Text(
                    'User Ratings: ${product.prodRating}',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}