import 'dart:convert';

import 'package:flutter_application_1/modal/imdb_modal.dart';
import 'package:http/http.dart' as http;

class ImdbHelper {
  static ImdbHelper ih = ImdbHelper._();
  ImdbHelper._();
  Future<ImdbModal?> imdbParsing() async {
    String link = "https://imdb-com.p.rapidapi.com/search?searchTerm=Titanic";
    http.Response response = await http.get(Uri.parse(link), headers: {
      'x-rapidapi-host': 'imdb-com.p.rapidapi.com',
      'x-rapidapi-key': '8ee1f1db66mshdf4ea6e2dc742ebp157f13jsn47f574233492'
    });

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print("--------------------${data}");
      ImdbModal modal = ImdbModal.mapToModal(data);

      return modal;
    }
    return null;
  }
}
