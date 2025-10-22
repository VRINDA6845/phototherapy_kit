import 'dart:convert';
import 'package:http/http.dart' as http;

class ESPService {
  static const String baseUrl = 'http://192.168.4.1';

  // Fetch sensor data
  static Future<Map<String, dynamic>?> fetchStatus() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/status'))
          .timeout(const Duration(seconds: 3));

      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
    } catch (e) {
      print("Error fetching ESP32 data: $e");
    }
    return null;
  }
}
