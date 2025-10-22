import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/section_card.dart';

class ProtocolsScreen extends StatelessWidget {
  const ProtocolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F), // Deep Dark Blue
      appBar: AppBar(
        title: Text(
          "Safety Protocols & Optimal Values",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.cyan.shade900,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // 1. Temperature Protocol
            SectionCard(
              title: "1. Baby's Temperature Protocol (Thermoregulation)",
              icon: Icons.thermostat_outlined,
              content:
                  "Maintaining a Neutral Thermal Environment (NTE) is critical during phototherapy, as the light can cause heating or cooling issues. The baby's core body temperature must remain stable to prevent complications.\n\n"
                  "✅ Optimal Temperature Range (Axillary/Core): 36.5°C to 37.5°C (97.7°F to 99.5°F).\n\n"
                  "🩺 Action Steps:\n"
                  "- If temperature is below 36.5°C, remove the baby from the unit immediately, wrap them, and increase the room temperature.\n"
                  "- If temperature is above 37.5°C (Fever), temporarily stop the light, check the room for drafts, and monitor closely. Restart treatment only after the temperature is stable.\n"
                  "- Monitor temperature every 3 to 4 hours, or more frequently if unstable.\n"
                  "[Source: AAP, RCH Guidelines]",
            ),

            // 2. Light Intensity Protocol
            SectionCard(
              title: "2. Light Intensity Protocol (Irradiance)",
              icon: Icons.lightbulb_outline,
              content:
                  "The light dose, or Spectral Irradiance, determines how quickly bilirubin levels decrease. The intensity is set based on the severity of the baby's jaundice.\n\n"
                  "💡 Optimal Wavelength: Blue-green light, 460–490 nm (fixed by LED type).\n\n"
                  "🌤 Standard Phototherapy (Mild/Preventative): Irradiance of 8–10 µW/cm²/nm (≈ 60% Intensity).\n\n"
                  "☀️ Intensive Phototherapy (Severe/Rising Bilirubin): Irradiance must be 30 µW/cm²/nm or higher (≈ 90–100% Intensity).\n\n"
                  "📏 Maintain distance of 35–45 cm using the linear actuator.\n"
                  "[Source: AAP Technical Report]",
            ),

            // 3. Essential Safety Checklist
            SectionCard(
              title: "3. Essential Safety Checklist",
              icon: Icons.security,
              content:
                  "🧍 Exposure: Maximize skin exposure (diaper only) and rotate the baby every 2–3 hours.\n"
                  "😎 Eye Protection: Always use opaque eye shields during treatment; remove only for feeding/cuddles.\n"
                  "💧 Hydration: Ensure frequent feeding (every 2–4 hours) to prevent dehydration and aid bilirubin excretion.\n"
                  "🚼 Fluid Output: Monitor for adequate urination and stool output; report low output immediately.",
            ),
          ],
        ),
      ),
    );
  }
}
