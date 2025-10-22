import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/section_card.dart';

class ProtocolsScreenHindi extends StatelessWidget {
  const ProtocolsScreenHindi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F),
      appBar: AppBar(
        title: Text(
          "सुरक्षा प्रोटोकॉल और मानक मान",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.amber.shade900,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // 1️⃣ तापमान प्रोटोकॉल
            SectionCard(
              title: "1. शिशु का तापमान प्रोटोकॉल (Thermoregulation)",
              icon: Icons.thermostat_outlined,
              content:
                  "फोटोथेरेपी के दौरान **न्यूट्रल थर्मल एनवायरनमेंट (NTE)** बनाए रखना बहुत आवश्यक है, क्योंकि रोशनी से बच्चे का शरीर या तो बहुत गर्म या ठंडा हो सकता है। तापमान का स्थिर रहना जटिलताओं से बचाव करता है।\n\n"
                  "✅ **उत्तम तापमान सीमा (कांख/मुख्य):** 36.5°C से 37.5°C (97.7°F से 99.5°F)\n\n"
                  "🩺 **कार्रवाई के कदम:**\n"
                  "- यदि तापमान **36.5°C से कम** है, तो बच्चे को तुरंत यूनिट से निकालें, कपड़े से लपेटें और कमरे का तापमान बढ़ाएँ।\n"
                  "- यदि तापमान **37.5°C से अधिक** (बुखार) है, तो लाइट को अस्थायी रूप से बंद करें, कमरे में वेंटिलेशन की जाँच करें और तापमान स्थिर होने तक निगरानी करें।\n"
                  "- तापमान हर 3–4 घंटे पर मापें या अस्थिर स्थिति में और अधिक बार करें।\n"
                  "[स्रोत: AAP, RCH Guidelines]",
            ),

            // 2️⃣ लाइट इंटेंसिटी प्रोटोकॉल
            SectionCard(
              title: "2. प्रकाश की तीव्रता प्रोटोकॉल (Irradiance)",
              icon: Icons.lightbulb_outline,
              content:
                  "प्रकाश की मात्रा या **स्पेक्ट्रल इर्रेडियंस** यह निर्धारित करती है कि बिलीरुबिन कितनी तेजी से घटेगा। तीव्रता बच्चे की स्थिति के अनुसार डॉक्टर द्वारा तय की जाती है।\n\n"
                  "💡 **उत्तम तरंगदैर्ध्य:** नीला-हरा प्रकाश, 460–490 nm (LED के प्रकार से तय)\n\n"
                  "🌤 **सामान्य फोटोथेरेपी (हल्का पीलिया):** 8–10 µW/cm²/nm (लगभग 60% तीव्रता)\n\n"
                  "☀️ **गंभीर फोटोथेरेपी (तेज़ी से बढ़ता बिलीरुबिन):** 30 µW/cm²/nm या अधिक (लगभग 90–100% तीव्रता)\n\n"
                  "📏 दूरी हमेशा 35–45 cm बनाए रखें।\n"
                  "[स्रोत: AAP Technical Report]",
            ),

            // 3️⃣ सुरक्षा चेकलिस्ट
            SectionCard(
              title: "3. आवश्यक सुरक्षा चेकलिस्ट",
              icon: Icons.security,
              content:
                  "🧍 **एक्सपोज़र:** बच्चे को केवल डायपर में रखें और हर 2–3 घंटे में स्थिति बदलें।\n"
                  "😎 **आँखों की सुरक्षा:** हमेशा अपारदर्शी (opaque) आई शील्ड का उपयोग करें, केवल दूध पिलाने या स्नेह के समय हटाएँ।\n"
                  "💧 **हाइड्रेशन:** फोटोथेरेपी के दौरान तरल की कमी हो सकती है, इसलिए हर 2–4 घंटे में स्तनपान या फीडिंग सुनिश्चित करें।\n"
                  "🚼 **मूत्र और मल की निगरानी:** यदि आउटपुट कम हो, तो तुरंत डॉक्टर को सूचित करें।",
            ),
          ],
        ),
      ),
    );
  }
}
