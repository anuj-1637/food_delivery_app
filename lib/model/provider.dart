import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

class databaseProvider extends ChangeNotifier {
  late List _data;
  List get data => _data;
  var box = Hive.box('foodDataBox');

  addData() {
    _data = box.values.toList();
    notifyListeners();
  }
}
