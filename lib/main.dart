import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomLoginWidget(),
      ),
    );
  }
}

class CustomLoginWidget extends StatelessWidget {
  const CustomLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 1.0, // Slight shadow to simulate a bottom border
        titleSpacing: 0.0,
        leading: IconButton( // Back arrow button
          icon: const Icon(Icons.arrow_back, color: Color(0xFF554F4F)),
          onPressed: () {
            Navigator.pop(context); // Navigates back to the previous page
          },
        ),
        title: Text(
          'Log In',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            height: 1,
            color: const Color(0xFF554F4F),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 170, 20, 20),
            ),
            Expanded(
              child: Center(
                child: Container(
                  width: 300,
                  height: 350,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildTextField('Username/Email', const Color(0xFFB3B3B3)),
                      const SizedBox(height: 20),
                      _buildTextField('Password', const Color(0xFFB3B3B3), isPassword: true),
                      const SizedBox(height: 70),
                      _buildLoginButton(context), // Login button leading to HomePage
                      const SizedBox(height: 20),
                      _buildForgotPasswordText(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: _buildSignUpText(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, Color hintColor, {bool isPassword = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(64, 0, 0, 0),
            offset: Offset(0, 4),
            blurRadius: 30,
          ),
        ],
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: hintColor,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color.fromARGB(255, 2, 0, 0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color.fromARGB(255, 2, 0, 0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xFFFFFFFF),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(64, 1, 0, 0),
              offset: Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        width: 150,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Center(
          child: Text(
            'Login',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              height: 1,
              letterSpacing: 0.1,
              color: const Color(0xFF473E3E),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForgotPasswordText() {
    return Text(
      'Forgot password?',
      style: GoogleFonts.roboto(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        height: 1.4,
        letterSpacing: 0.1,
        color: const Color(0xFF000000),
      ),
    );
  }

  Widget _buildSignUpText() {
    return GestureDetector(
      onTap: () {
        // Handle sign-up navigation
      },
      child: const Text(
        "Don't have an account? Sign In",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.black,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
