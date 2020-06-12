import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:clima/screens/loading_screen.dart';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  Future getData() async {
    try {
      http.Response response = await http.get(url);

      if (response.statusCode == 200 && response.statusCode < 300) {
        String data = response.body;
        return jsonDecode(data);
      }
    } catch (e) {
      print('Error : ${e.toString()}');
    }
  }
}
