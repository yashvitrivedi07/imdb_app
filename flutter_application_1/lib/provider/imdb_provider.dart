import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/imdb_helper.dart';
import 'package:flutter_application_1/modal/imdb_modal.dart';

class ImdbProvider with ChangeNotifier {
  ImdbModal? imdbModal = ImdbModal();

  void getImdbData() async {
    imdbModal = await ImdbHelper.ih.imdbParsing();
    notifyListeners();
  }
}
