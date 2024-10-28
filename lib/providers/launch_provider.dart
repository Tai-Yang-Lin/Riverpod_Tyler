import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_tyler/providers/launch_class.dart';


// API 請求 Provider
final launchProvider = FutureProvider<List<Launch>>((ref) async {
  try {
    final response = await http.get(Uri.parse('https://api.spacexdata.com/v3/launches'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((launch) => Launch.fromJson(launch)).toList();
    } else {
      throw Exception('Failed to load launches: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred: $e');
    throw Exception('Failed to fetch data');
  }
});

