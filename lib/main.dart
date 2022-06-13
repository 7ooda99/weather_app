import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/wether_model.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/providers/wether_provider.dart';



void main() {
  runApp(WeatherApp());
}



class WeatherApp extends StatelessWidget {
  
  wetherModel? wether;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)
      {
        return WetherProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}


