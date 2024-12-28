import 'package:brand/profil.dart';
import 'package:brand/profil.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:VehicleListScreen(), //BottomNavigation(),
    );
  }
}








