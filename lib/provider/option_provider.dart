import 'package:flutter/material.dart';
import 'package:task/data/data.dart';
import 'package:task/model/option_model.dart';

class OptionProvider with ChangeNotifier {
  OptionProvider() {
    setupOptionModelData();
  }

  late List<OptionModel> optionData;
  bool loadOptionData = false;

  setupOptionModelData() {
    List<dynamic> data = StaticData.data['data']['attributes']['options'];
    var dataModel = data.map((item) => OptionModel.fromJson(item)).toList();
    optionData = dataModel;
    loadOptionData = true;
    notifyListeners();
  }
}
