import 'dart:convert';

import 'package:http/http.dart' as http;

class Networking {
  dynamic decodeData;
  var url = 'https://khelaahobe.com/api/auth/flutter/category';

  Future<dynamic> getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      decodeData = jsonDecode(data);
      print(decodeData);
    } else {
      print(response.statusCode);
    }
  }
}
