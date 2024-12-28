import 'dart:convert';
import 'package:brand/vehicle_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<Vehicle>> getVehicules() async {
    final response = await http.get(
      Uri.parse('https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/all-vehicles-model/records?limit=20'),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      List<dynamic> vehiculesJson = jsonResponse['records'];
      List<Vehicle> vehicules = vehiculesJson
          .map((item) => Vehicle.fromJson(item['fields']))
          .toList();
      return vehicules;
    } else {
      throw Exception('erreur lors de la recupération des vehicules');
    }
  }
}


