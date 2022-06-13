import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/wether_model.dart';
import 'package:weather_app/pages/search_page.dart';
import 'package:weather_app/providers/wether_provider.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void updateUi()
  {
  setState(() {
    
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SearchPage(
                  updateUi: updateUi
                  );
              }));
            },
            icon: Icon(Icons.search),
          ),
        ],
        title: Text('Weather App'),
      ),
      body: Provider.of<WetherProvider>(context, listen: true).wetherData == null? Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'there is no weather 😔 start',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              'searching now 🔍',
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
      ) : Container(
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 3,),
            Text('Cairo', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),),
            Text('Updated : 20-18-9',style: TextStyle(
              fontSize: 22,
              
            ),),
            Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/clear.png'),
                 Text('30', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),),
            
            Column(
              children: [
                Text('maxTemp : 30'),
                Text('maxTemp : 30'),
              ],
            ),
              ],
            ),
            Spacer(flex: 1,),
            Text('clear', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),),
            Spacer(flex: 5,)
          ],
        ),
      ),
    );
  }
}
