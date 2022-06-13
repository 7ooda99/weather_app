class wetherModel {
   String wetherStateName;
   String date;
   double temp;
   double minTemp;
   double maxTemp;

  wetherModel({
   required this.wetherStateName,
   required this.date,
   required this.temp,
   required this.minTemp,
   required this.maxTemp,
  });


 factory wetherModel.fromJson(Map<String, dynamic> data)
  {
    return wetherModel(wetherStateName: data['weather_state_name'],
    date: data['applicable_date'],
      temp: data['the_temp'],
      minTemp: data['min_temp'],
      maxTemp: data['max_temp'],
      );
  }
}
