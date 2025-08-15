import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

class databaseProvider extends ChangeNotifier {
  late List _data;
  List get data => _data;
  var box = Hive.box('foodDataBox');

  addData(value) async {
    await box.add(value);
    getData();
    notifyListeners();
  }

  getData() async {
    _data = await box.keys.map((e) {
      var temp = box.get(e);
      return {'key': e};
    }).toList();
    notifyListeners();
  }

  updateData(key, value) async {
    await box.put(key, value);
    getData();
    notifyListeners();
  }

  deleteData(key) async {
    await box.delete(key);
    getData();
    notifyListeners();
  }

  init() {
    getData();
    notifyListeners();
  }
}
