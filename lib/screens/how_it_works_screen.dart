import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/section_card.dart';

class HowItWorksScreen extends StatelessWidget {
  const HowItWorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F), // Deep Dark Blue
      appBar: AppBar(
        title: Text(
          "Phototherapy: Mechanism & Usage",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.cyan.shade900,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // 1. What is Jaundice
            SectionCard(
              title: "1. What is Jaundice (Hyperbilirubinemia)?",
              icon: Icons.baby_changing_station,
              content:
                  "Jaundice (Neonatal Hyperbilirubinemia) is a common condition in newborns caused by high levels of a yellow pigment called **Bilirubin** in the blood. Bilirubin is produced from the normal breakdown of red blood cells. A mature liver typically filters it out, but a newborn's liver is often undeveloped, leading to bilirubin accumulation. Untreated high bilirubin can be toxic to the brain.",
            ),

            // 2. Phototherapy Treatment
            SectionCard(
              title: "2. The Scientific Treatment for Neonatal Jaundice",
              icon: Icons.medical_services_outlined,
              content:
                  "Phototherapy is a non-invasive and highly effective treatment. The special **blue light** (typically 460 to 490 nanometers wavelength) converts Bilirubin into forms that the baby's body can directly excrete through urine and stool, without processing by the liver. This process, called **Photoisomerization**, is the fastest method to transform the toxic form of bilirubin into a non-toxic, excretable form. [Source: American Academy of Pediatrics (AAP) Guidelines]",
            ),

            // 3. Our Device: Portable Umbrella
            SectionCard(
              title: "3. Our Portable Umbrella Phototherapy Device",
              icon: Icons.umbrella,
              content:
                  "Our device is an innovative, **foldable system** designed for home use or in limited resource settings.\n\n"
                  "**Design:** It consists of a robust main body stand supporting the light-emitting umbrella system.\n\n"
                  "**Operation:** The height of the umbrella is adjusted to the optimum distance from the baby using a linear actuator, operated through a DPDT (Double Pole Double Throw) polarity switch. By reversing the polarity of the voltage applied to the actuator’s motor, one direction extends it while the other retracts it. This mechanism smoothly opens and closes the device, ensuring the light intensity is accurately directed toward the baby.",
            ),

            // 4. Step-by-Step Guide
            SectionCard(
              title: "4. Essential Device Usage Steps",
              icon: Icons.checklist_rtl,
              content:
                  "Always consult a physician before starting treatment.\n\n"
                  "**Step 1: Set Up the Device**\n"
                  "Place the stand on a flat, stable surface next to the baby's crib/cradle. Turn the power on.\n\n"
                  "**Step 2: Adjust Height**\n"
                  "Use the linear actuator controls to gently unfold the umbrella and set it to the optimal distance: 35 to 45 cm (approx. 14–18 inches) from the baby.\n\n"
                  "**Step 3: Prepare the Baby**\n"
                  "Apply specially designed **eye shields (goggles)** to protect the baby's eyes from the intense light. Dress the baby only in a diaper for maximum skin exposure to absorb the bilirubin.\n\n"
                  "**Step 4: Set Intensity**\n"
                  "Set the light power intensity using the adjustable dimmer switch . Use the optimal intensity suggested by the doctor.\n\n"
                  "**Step 5: Start Treatment**\n"
                  "Continuously monitor the temperature. Turn the baby every 2–3 hours during treatment so light covers the entire body evenly.\n\n"
                  "**Caution:** Ensure the baby does not overheat and is fed (breastfed/formula) every 2–4 hours to help flush out the bilirubin quickly.",
            ),

            const SizedBox(height: 10),
            Text(
              "Refer to the 'Protocols' tab for detailed information and safety guidelines.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(color: Colors.white54, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
