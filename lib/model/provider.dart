import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

class databaseProvider extends ChangeNotifier {
  late List _data;
  List get data => _data;
  var box = Hive.box('foodDataBox');

  addData(value) {
    box.add(value);
    notifyListeners();
  }

  getData() {
    _data = box.keys.map((e) {
      var temp = box.get(e);
      return {'key': e};
    }).toList();
    notifyListeners();
  }
}
