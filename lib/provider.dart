import 'package:flutter/material.dart';

class Provider1 extends ChangeNotifier {
  TextEditingController firsttextcontroleler = TextEditingController();
  TextEditingController secondttextcontroleler = TextEditingController();
  String? resultText;

  void stringConcatFunction() {
    final ftext = firsttextcontroleler.text.trim();
    final stext = secondttextcontroleler.text.trim();
    if (ftext.isNotEmpty && stext.isNotEmpty) {
      resultText = ftext + stext;
    } else {
      resultText = null;
      notifyListeners();
    }
    notifyListeners();
  }
}
