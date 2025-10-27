import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../services/esp_service.dart';
import '../widgets/info_card.dart';

class DashboardScreenHindi extends StatefulWidget {
  const DashboardScreenHindi({super.key});

  @override
  State<DashboardScreenHindi> createState() => _DashboardScreenHindiState();
}

class _DashboardScreenHindiState extends State<DashboardScreenHindi> {
  double lux = 0;
  double temp = 0;
  bool overTemp = false;
  bool isConnected = false;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final data = await ESPService.fetchStatus();
    if (data != null) {
      setState(() {
        lux = data['lux'] ?? 0;
        temp = data['temp'] ?? 0;
        overTemp = (data['over'] == 1);
        isConnected = true;
        isLoading = false;
      });
    } else {
      setState(() {
        isConnected = false;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Color tempColor = Colors.greenAccent;
    if (temp > 37.8 || temp < 36.0) tempColor = Colors.redAccent;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF001f3f), Color(0xFF0074D9)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Text(
                "फोटोथैरेपी डैशबोर्ड",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              if (isLoading)
                const CircularProgressIndicator(color: Colors.white)
              else if (!isConnected)
                const Text(
                  "⚠️ फोटोथैरेपी किट से कनेक्ट नहीं है",
                  style: TextStyle(color: Colors.redAccent, fontSize: 16),
                )
              else
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        InfoCard(
                          title: "बिस्तर का तापमान (°C)",
                          value: temp.toStringAsFixed(2),
                          color: tempColor,
                        ),
                        const SizedBox(height: 16),
                        InfoCard(
                          title: "प्रकाश तीव्रता (लक्स)",
                          value: lux.toStringAsFixed(1),
                          color: Colors.lightBlueAccent,
                        ),
                        const SizedBox(height: 16),
                        InfoCard(
                          title: "अधिक तापमान चेतावनी",
                          value: overTemp ? "हाँ" : "नहीं",
                          color: overTemp
                              ? Colors.redAccent
                              : Colors.greenAccent,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "सर्वोत्तम स्थितियाँ:\n• तापमान: 36.5°C – 37.5°C\n• प्रकाश तीव्रता: 30,000 – 40,000 लक्स",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white70,
                            fontSize: 15,
                            height: 1.6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
