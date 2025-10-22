import 'package:flutter/material.dart';

// ✅ Make sure all these files exist in your "lib/screens" folder.
import 'screens/language_screen.dart';
import 'screens/dashboard_screen.dart'; // English dashboard
import 'screens/dashboard_screen_hi.dart'; // Hindi dashboard
import 'screens/how_it_works_screen.dart';
import 'screens/how_it_works_screen_hi.dart';
import 'screens/protocols_screen.dart';
import 'screens/protocols_screen_hi.dart';
import 'screens/maintenance_screen.dart';
import 'screens/maintenance_screen_hi.dart';

void main() {
  runApp(const PhototherapyApp());
}

class PhototherapyApp extends StatelessWidget {
  const PhototherapyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phototherapy Kit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String language = ''; // 'en' or 'hi'
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ✅ Step 1: Ask for language first
    if (language.isEmpty) {
      return LanguageScreen(
        onLanguageSelected: (lang) {
          setState(() {
            language = lang;
          });
        },
      );
    }

    // ✅ Step 2: Choose correct screen set
    final List<Widget> screens = language == 'en'
        ? const [
            DashboardScreen(), // English version
            HowItWorksScreen(),
            ProtocolsScreen(),
            MaintenanceScreen(),
          ]
        : const [
            DashboardScreenHindi(), // Hindi version
            HowItWorksScreenHindi(),
            ProtocolsScreenHindi(),
            MaintenanceScreenHindi(),
          ];

    // ✅ Step 3: Bottom navigation labels based on language
    final List<BottomNavigationBarItem> navItems = [
      BottomNavigationBarItem(
        icon: const Icon(Icons.dashboard),
        label: language == 'hi' ? 'डैशबोर्ड' : 'Dashboard',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.light_mode),
        label: language == 'hi' ? 'कार्यप्रणाली' : 'How It Works',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.warning),
        label: language == 'hi' ? 'प्रोटोकॉल' : 'Protocols',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.settings),
        label: language == 'hi' ? 'रखरखाव' : 'Maintenance',
      ),
    ];

    // ✅ Step 4: Return main app layout
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.black87,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: navItems,
      ),
    );
  }
}
