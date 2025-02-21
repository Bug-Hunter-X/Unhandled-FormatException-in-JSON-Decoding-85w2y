```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the format exception appropriately, e.g., retry or display an error message
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}
```