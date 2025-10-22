import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// --- (Placeholder SectionCard widget — keep only if it's not imported separately) ---
class SectionCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;

  const SectionCard({
    super.key,
    required this.title,
    required this.content,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF002A50).withOpacity(0.8), // Deep Blue Background
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.cyan.shade800, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.cyan.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.cyanAccent, size: 28),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const Divider(color: Colors.white38, height: 25),
          Text(
            content,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white70,
              height: 1.6,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
// -------------------------------------------------------------------------------

class HowItWorksScreenHindi extends StatelessWidget {
  const HowItWorksScreenHindi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F), // Deep Dark Blue
      appBar: AppBar(
        title: Text(
          "फोटोथेरेपी: कार्यप्रणाली एवं उपयोग",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.cyan.shade900,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // 1️⃣ पीलिया क्या है
            SectionCard(
              title: "१. पीलिया (Jaundice) क्या है?",
              icon: Icons.baby_changing_station,
              content:
                  "पीलिया (नवजात हाइपरबिलीरुबिनेमिया) नवजात शिशुओं में होने वाली एक आम स्थिति है, "
                  "जो रक्त में बिलीरुबिन नामक पीले वर्णक के उच्च स्तर के कारण होती है। "
                  "बिलीरुबिन लाल रक्त कोशिकाओं के टूटने से बनता है। "
                  "सामान्य लिवर इसे शरीर से बाहर निकाल देता है, लेकिन नवजात शिशुओं में लिवर पूरी तरह से विकसित नहीं होता, "
                  "जिससे बिलीरुबिन जमा हो जाता है और त्वचा पीली दिखाई देती है। "
                  "उच्च बिलीरुबिन का इलाज न किए जाने पर यह मस्तिष्क को नुकसान पहुँचा सकता है।",
            ),

            // 2️⃣ फोटोथेरेपी उपचार
            SectionCard(
              title: "२. नवजात पीलिया का वैज्ञानिक उपचार",
              icon: Icons.medical_services_outlined,
              content:
                  "फोटोथेरेपी पीलिया का एक गैर-आक्रामक और अत्यंत प्रभावी उपचार है। "
                  "विशेष नीली लाइट (आमतौर पर 460 से 490 नैनोमीटर तरंगदैर्ध्य) "
                  "बिलीरुबिन को फोटोआइसोमराइज़ेशन (Photoisomerization) नामक प्रक्रिया द्वारा "
                  "ऐसे रूपों में बदल देती है जिन्हें शिशु का शरीर सीधे मूत्र और मल के माध्यम से बाहर निकाल सकता है, "
                  "लीवर के संसाधित किए बिना। "
                  "यह बिलीरुबिन को विषैले (toxic) रूप से गैर-विषैले (non-toxic) रूप में बदलने की सबसे तेज़ विधि है। "
                  "[स्रोत: अमेरिकन एकेडमी ऑफ पीडियाट्रिक्स (AAP) दिशानिर्देश]",
            ),

            // 3️⃣ हमारा डिवाइस
            SectionCard(
              title: "३. हमारा फोटोथेरेपी छाता डिवाइस",
              icon: Icons.umbrella,
              content:
                  "हमारा पोर्टेबल फोटोथेरेपी छाता डिवाइस एक अभिनव, फोल्डेबल (foldable) प्रणाली है "
                  "जिसे घर पर या सीमित संसाधनों वाले स्थानों पर उपयोग के लिए डिज़ाइन किया गया है।\n\n"
                  "**डिज़ाइन:** इसमें एक मजबूत मुख्य बॉडी स्टैंड होता है। "
                  "इस बॉडी के ऊपर लाइट उत्सर्जित करने वाला छाता (umbrella) सिस्टम लगा होता है।\n\n"
                  "**संचालन:** छाते की ऊँचाई को बच्चे से इष्टतम दूरी पर समायोजित करने के लिए एक "
                  "रैखिक प्रवर्तक (linear actuator) का उपयोग किया जाता है। "
                  "यह एक्चुएटर बटन के एक स्पर्श से डिवाइस को धीरे से खोलता और बंद करता है, "
                  "जिससे प्रकाश की तीव्रता (Intensity) बच्चे के लिए सटीक रूप से लक्षित होती है।",
            ),

            // 4️⃣ उपयोग के चरण
            SectionCard(
              title: "४. डिवाइस उपयोग के आवश्यक चरण",
              icon: Icons.checklist_rtl,
              content:
                  "कृपया उपयोग से पहले हमेशा चिकित्सक से सलाह लें।\n\n"
                  "**चरण १: डिवाइस स्थापित करें**\n"
                  "स्टैंड को बच्चे के बिस्तर/क्रेडल के पास समतल और स्थिर सतह पर रखें। पावर ऑन करें।\n\n"
                  "**चरण २: ऊँचाई समायोजित करें**\n"
                  "डिवाइस पर रैखिक एक्चुएटर नियंत्रणों का उपयोग करके, छाते को धीरे-धीरे खोलें और इसे बच्चे से 35 से 45 सेंटीमीटर "
                  "(लगभग 14–18 इंच) की दूरी पर सेट करें।\n\n"
                  "**चरण ३: बच्चे को तैयार करें**\n"
                  "बच्चे की आँखों को लाइट से बचाने के लिए विशेष रूप से डिज़ाइन किए गए गॉगल्स (eye shields) लगाएँ। "
                  "बिलीरुबिन के अधिकतम अवशोषण के लिए बच्चे को केवल डायपर पहनाएँ।\n\n"
                  "**चरण ४: तीव्रता सेट करें**\n"
                  "डैशबोर्ड पर 'लाइट पावर' अनुभाग का उपयोग करके आवश्यक प्रकाश तीव्रता (जैसे 70% या 80%) सेट करें। "
                  "चिकित्सक द्वारा सुझाई गई इष्टतम तीव्रता का उपयोग करें।\n\n"
                  "**चरण ५: उपचार शुरू करें**\n"
                  "टाइमर शुरू करें और तापमान की निरंतर निगरानी करें। उपचार के दौरान हर 2–3 घंटे में बच्चे को घुमाएँ ताकि पूरे शरीर पर समान रूप से प्रकाश पड़े।\n\n"
                  "**चेतावनी:** सुनिश्चित करें कि बच्चा अत्यधिक गर्म न हो और हर 2–4 घंटे में स्तनपान/दूध पिलाया जाए "
                  "ताकि बिलीरुबिन शरीर से तेज़ी से बाहर निकल सके।",
            ),

            const SizedBox(height: 10),
            Text(
              "अधिक जानकारी और सुरक्षा प्रोटोकॉल के लिए 'प्रोटोकॉल' टैब देखें।",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(color: Colors.white54, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
