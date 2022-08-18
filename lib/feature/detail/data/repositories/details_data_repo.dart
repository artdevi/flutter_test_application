import 'dart:convert';

import 'package:flutter_application_1/feature/detail/data/models/details_data.dart';
import 'package:http/http.dart' as http;

class DetailsDataRepo {
  final url = 'https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5';

  Future<DetailsData> getData() async {
    try {
      var response = await http.get(Uri.parse(url));

      var jsonResult = json.decode(response.body);
      return DetailsData.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}