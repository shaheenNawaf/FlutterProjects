import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Illustration at the top
            Image.asset(
              'assets/welcome_illustration.png',
              height: 450,
              alignment: Alignment.center,
            ),
            
            // Welcome text
            Text(
              'Welcome', 
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
           const SizedBox(height: 20),
            
            // Description text
            Text(
              'Manage your expenses',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              'seamlessly & intuitively',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 40),
            
            ElevatedButton(
              onPressed: () {
                //Google Sign-in kunuhay
                Navigator.pushNamed(context, '/signin');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Button background color
                minimumSize: const Size(double.infinity, 50),
                textStyle: const TextStyle(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.google, 
                    color:Colors.blue[900]!,
                    size: 19,
                  ),
                  const SizedBox(width: 25),
                  Text(
                    'Sign in with Google',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.blue[900]!,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ), 
            const SizedBox(height: 20),
            
            // Create an account button
            OutlinedButton(
              onPressed: () {
                // Navigate to Sign-Up screen
                Navigator.pushNamed(context, '/signup');
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: Text(
                'Create an account',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 35),
            
            // Already have an account? Sign In link
            GestureDetector(
              onTap: () {
                // Navigate to Sign In screen
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Text(
                    'Already have an account?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin');
                      }, 
                      child: 
                        Text(
                          'Sign in',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                    ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
