import 'dart:convert';

import 'package:aws_maritim_ptk/services/model.dart';
import 'package:http/http.dart' as http;

Future<Model> fetchAws() async {
  final response = await http.get(Uri.parse('http://202.90.199.132/aws-new/data/station/latest/3000000011'));
  if(response.statusCode == 200) {
    print('Response body: ${response.body}');
    Model data = Model.fromJson(jsonDecode(response.body));
    return data;
  } else {
    throw Exception("Server Error");
  }
}