import 'package:flutter/material.dart';
import 'package:task/data/data.dart';
import 'package:task/model/option_model.dart';

class OptionProvider with ChangeNotifier {
  OptionProvider() {
    setupOptionModelData();
  }

  late List<OptionModel> optionData;
  bool loadOptionData = false;
//
  String _selectedTypeOption = '';
  int? selectedTypeIndex;

  get selectedTypeOption => _selectedTypeOption;

  set selectedTypeOption(value) {
    selectedTypeIndex = value - 1;
    _selectedTypeOption = optionData[selectedTypeIndex!].label;
    notifyListeners();
  }

//
  String _selectedOption = '';
  int? selectedOptionIndex;

  get selectedOption => _selectedOption;

  set selectedOption(value) {
    selectedOptionIndex = value;
    _selectedOption =
        optionData[selectedTypeIndex!].suboptions[selectedOptionIndex!].label;
    notifyListeners();
  }

  //
  String _selectedCategoryOption = '';
  get selectedCategoryOption => _selectedCategoryOption;
  set selectedCategoryOption(value) {
    _selectedCategoryOption = optionData[selectedTypeIndex!]
        .suboptions[selectedOptionIndex!]
        .suboptions![value]
        .label;
    notifyListeners();
  }

  setupOptionModelData() {
    List<dynamic> data = StaticData.data['data']['attributes']['options'];
    var dataModel = data.map((item) => OptionModel.fromJson(item)).toList();
    optionData = dataModel;
    print(optionData);
    loadOptionData = true;
    notifyListeners();
  }

  reset() {
    selectedTypeIndex = null;
    _selectedOption = '';
    _selectedTypeOption = '';
    _selectedCategoryOption = '';
    notifyListeners();
  }
}
