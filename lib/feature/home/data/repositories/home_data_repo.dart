import 'dart:convert';

import 'package:flutter_application_1/feature/home/data/models/home_data.dart';
import 'package:http/http.dart' as http;

class HomeDataRepo {
  final url = 'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175';

  Future<HomeData> getData() async {
    try {
      var response = await http.get(Uri.parse(url));

      var jsonResult = json.decode(response.body);
      return HomeData.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}