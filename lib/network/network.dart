import 'dart:convert';

import 'package:http/http.dart';
import 'package:quakes_app_google_map/model/quake.dart';

class Network{

  /** todo 4 (next quakes_app) **/

  Future<Quake> getAllQuakes() async{
    var apiUrl = 'https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson';

    final response = await get(Uri.parse(apiUrl));

    if(response.statusCode == 200){
      print(response.body);
      return Quake.fromJson(json.decode(response.body));
    }else{
      throw Exception('Error getting quakes');
    }

  }


}