import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quakes_app_google_map/model/quake.dart';
import 'package:quakes_app_google_map/network/network.dart';

class QuakesApp extends StatefulWidget {
  @override
  _QuakesAppState createState() => _QuakesAppState();
}

class _QuakesAppState extends State<QuakesApp> {
  late Future<Quake> _quakesData; /** todo 5 **/

  @override
  void initState() { /** todo 6 finish **/
    // TODO: implement initState
    super.initState();
    _quakesData = Network().getAllQuakes();
    _quakesData.then((value) =>
        {print('place : ${value.features![0].geometry?.coordinates![0]}')});
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
