import 'package:brand/profil.dart';
import 'package:flutter/material.dart';

import 'car.dart';
import 'home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  BottomNavigationState createState() => BottomNavigationState();

}

class BottomNavigationState extends State<BottomNavigation>{
  int _currentIndex = 0;

  void _onTapped (int index){
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    const MyHome(),
    const CarPage(),
    VehicleListScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ) ,

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapped,
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.cloud_circle),
              label: '',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            )

          ])
      ,
    );
  }

}