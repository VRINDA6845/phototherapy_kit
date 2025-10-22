import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageScreen extends StatelessWidget {
  final Function(String) onLanguageSelected;

  const LanguageScreen({super.key, required this.onLanguageSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F), // Deep Dark Blue Background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select Language / भाषा चुनें",
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.cyanAccent,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            _buildLanguageButton(
              context,
              "English",
              "en",
              onLanguageSelected,
            ),
            const SizedBox(height: 20),
            _buildLanguageButton(
              context,
              "हिन्दी (Hindi)",
              "hi",
              onLanguageSelected,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageButton(
      BuildContext context, String text, String langCode, Function(String) onPressed) {
    return SizedBox(
      width: 250,
      height: 60,
      child: ElevatedButton(
        onPressed: () => onPressed(langCode),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan.shade700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: Colors.cyanAccent, width: 2),
          ),
          elevation: 10,
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
