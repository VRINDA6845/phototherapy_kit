import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerCard extends StatelessWidget {
  final int sessionTime;

  const TimerCard({super.key, required this.sessionTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF001F3F).withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.cyanAccent.withOpacity(0.5)),
      ),
      child: Column(
        children: [
          Text(
            "TIME LEFT",
            style: GoogleFonts.poppins(
                fontSize: 16, color: Colors.cyanAccent.shade100),
          ),
          const SizedBox(height: 10),
          Text(
            "$sessionTime min",
            style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
