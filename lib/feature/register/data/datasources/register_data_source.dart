import 'dart:convert';

import 'package:clean_arquicture/core/config/config.dart';
import 'package:clean_arquicture/feature/register/data/models/cat_model.dart';
import 'package:http/http.dart' as http;

class RegisterDataSource {
  Future<List<CatModel>> getListCats() async {
    final response = await http.get(Uri.parse('${Config.baseUrl}/v1/breeds'));

    if (response.statusCode == 200) {
      final body = response.body;
      final convertData = jsonDecode(body) as List<dynamic>;
      final listCats = convertData.map((cat) => CatModel.fromMap(cat)).toList();
      return listCats;
    } else {
      throw Exception('Failed to load cats');
    }
  }

  
}
