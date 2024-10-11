import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/products.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Products product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Item: ${product.id}' ,
          style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          textAlign: TextAlign.center,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor:  const Color(0xFF003fba),
        
      ),
      body: SingleChildScrollView( //Para di mag overflow
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                product.imageUrl,
                height: 300,
                width: double.infinity, // Full width img
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Text(
                product.name,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    '\$${product.price.toStringAsFixed(2)}', //Fixed decimal points
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const FaIcon(
                    FontAwesomeIcons.solidStar,
                    color: Color(0xFF003fba),
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${product.prodRating}',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text( //Description
                product.description,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.blue[100], // Light blue background for the category
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: Text(
                  product.category.toUpperCase(),
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Quantity left: ${product.prodQuantity}',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.grey[500], // Use a subtle color for the quantity
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}