


import 'package:flutter/widgets.dart';
import 'package:weather_app/models/wether_model.dart';

class WetherProvider extends ChangeNotifier{
  wetherModel? _wetherData;

  set wetherData(wetherModel? wether)
  {
    _wetherData = wether;
    notifyListeners();
  }

  wetherModel? get wetherData => _wetherData;
}