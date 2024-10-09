import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF003fba),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Padding(
              padding: const EdgeInsets.only(left: 20 ,top: 60),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/firstscreen');
                },
                icon: const FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
            const SizedBox(height: 25),
            // Sign In text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Sign Up',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // White container that will fill remaining space with scrollable content
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(35),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: SingleChildScrollView( // This makes the form content scrollable
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Compyut!',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Hello there, sign-up to continue!',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // First Name Input
                      const TextFieldSection(
                        label: 'First Name',
                        hintText: 'Input your first name/s (Ex: Juan)',
                      ),
                      const SizedBox(height: 20),
                      // Last Name Input
                      const TextFieldSection(
                        label: 'Last Name',
                        hintText: 'Input your last name (Ex: Dela Cruz)',
                      ),
                      const SizedBox(height: 20),
                      // Email Address Input
                      const TextFieldSection(
                        label: 'Email Address',
                        hintText: 'Input your email address (ex: x@provider.domain)',
                      ),
                      const SizedBox(height: 20),
                      // Username Input
                      const TextFieldSection(
                        label: 'Username',
                        hintText: 'Input your username',
                      ),
                      const SizedBox(height: 20),
                      // Password Input
                      const TextFieldSection(
                        label: 'Password',
                        hintText: 'Input your password',
                        isObscured: true,
                      ),
                      const SizedBox(height: 20),
                      // Re-type Password Input
                      const TextFieldSection(
                        label: 'Re-type your Password',
                        hintText: 'Input your password again',
                        isObscured: true,
                      ),
                      const SizedBox(height: 20),
                      // Sign In Button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/homescreen');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Sign up link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account?",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color.fromARGB(255, 218, 218, 218),
                            ),
                          ),
                          const SizedBox(width: 10),

                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signin');
                            }, 
                            child:
                            Text(
                              "Sign in",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.blue[700],
                                fontWeight: FontWeight.w600,
                              ),
                            ), 
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//Added this to have a dedicated reference when adding textfield and avoid code redundancy
class TextFieldSection extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isObscured;

  const TextFieldSection({
    super.key, 
    required this.label,
    required this.hintText,
    this.isObscured = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: Colors.black54,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          obscureText: isObscured,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 247, 247, 247),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: hintText,
            labelStyle: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 223, 223, 223),
              fontSize: 14,
            ),
            hoverColor: const Color.fromARGB(255, 250, 250, 250),
            suffix: const FaIcon(
              FontAwesomeIcons.check,
              color: Color.fromARGB(255, 0, 140, 255),
              size: 14,
            ),
          ),
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
