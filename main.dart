
import 'package:flutter/material.dart';

import 'package:flutter_udmey/massengerscreen.dart';

void main() {
  runApp(MyApp());
  //MyApp x=MyApp();
  //Widget y=MyApp();
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp

      ( debugShowCheckedModeBanner: false,
      home: massengerscreen(),
    );

  }




}



