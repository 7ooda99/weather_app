import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/wether_model.dart';
import 'package:weather_app/providers/wether_provider.dart';
import 'package:weather_app/services/wether_service.dart';


class SearchPage extends StatelessWidget {
   SearchPage({Key? key, required this.updateUi}) : super(key: key);
   String? cityName;
  
  VoidCallback? updateUi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search a city'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted : (data) async {
              cityName = data;


              WetherSirvice service = WetherSirvice();
              wetherModel wether =  await  service.getWether(cityName: cityName!);
              

              Provider.of<WetherProvider>(context,listen: false).wetherData = wether;
              updateUi!();
              
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 24),
              suffix : Icon(Icons.search),
              labelText: 'Search',
              hintText: 'Enter City',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}



