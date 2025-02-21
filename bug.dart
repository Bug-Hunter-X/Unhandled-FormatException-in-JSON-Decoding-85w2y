```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // This line will throw an error if the response body is not a valid JSON
      final jsonData = jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // This catch block will catch all exceptions, including format exceptions
    print('Error: $e');
  }
}
```