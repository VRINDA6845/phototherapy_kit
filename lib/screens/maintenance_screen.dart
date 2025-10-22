import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/section_card.dart';

class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F), // Deep Dark Blue
      appBar: AppBar(
        title: Text(
          "Device Maintenance & Care",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.cyan.shade900,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // 1️⃣ Cleaning & Hygiene
            SectionCard(
              title: "1. Cleaning & Hygiene",
              icon: Icons.cleaning_services_outlined,
              content:
                  "Proper cleaning ensures maximum light transmission and minimizes infection risk.\n\n"
                  "• **Light Umbrella:** Wipe the inside surface of the umbrella (where light shines) with a soft, lint-free cloth dampened with a mild, non-abrasive cleaning solution (e.g., 70% isopropyl alcohol).\n"
                  "• **Main Stand/Base:** Wipe the entire stand and base with a hospital-grade disinfectant wipe. Ensure all surfaces are dry before use.\n"
                  "• **Frequency:** Clean thoroughly after every use or weekly during continuous operation. Avoid spraying liquid directly onto the components, especially the linear actuator or electrical ports.",
            ),

            // 2️⃣ Light Efficacy & Replacement
            SectionCard(
              title: "2. Light Efficacy & Replacement",
              icon: Icons.light_mode,
              content:
                  "LED effectiveness decreases over time, which reduces treatment quality.\n\n"
                  "• **Efficacy Check:** The LEDs are rated for approximately 20,000 hours of use. \n"
                  "• **Visual Check:** Visually inspect all LED strips monthly. If any strip appears significantly dimmer or has failed lights, contact support immediately.\n"
                  "• **Replacement:** Only use manufacturer-approved LED replacement units. Never attempt to replace individual diodes.",
            ),

            // 3️⃣ Mechanical & Actuator Safety
            SectionCard(
              title: "3. Mechanical & Actuator Safety",
              icon: Icons.precision_manufacturing,
              content:
                  "The linear actuator controls height; handle it with care.\n\n"
                  "• **Actuator Check:** Periodically check the linear arm for smooth operation. Listen for unusual grinding or straining noises when adjusting height.\n"
                  "• **Cables:** Inspect the power and data cables running to the umbrella for frays, damage, or kinks. Damaged cables must be replaced immediately.\n"
                  "• **Stability:** Ensure the main stand's base is stable and positioned on a flat, non-slip surface to prevent tilting.",
            ),

            // 4️⃣ Storage & Transport
            SectionCard(
              title: "4. Storage & Transport",
              icon: Icons.archive_outlined,
              content:
                  "When not in use, ensure the device is safely folded and stored.\n\n"
                  "• **Storage:** Store the folded unit in its original protective case, away from direct sunlight, moisture, and extreme temperatures.",
            ),
          ],
        ),
      ),
    );
  }
}
