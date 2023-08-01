import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../prescription/views/prescription_screen.dart';
import '../../profile/views/profile_screen.dart';
import 'home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 2;
  final List<Widget> _widgetOptions = <Widget>[
    ProfileScreen(),
    PrescriptionScreen(),
    HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: BottomNavigationBar(

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 32,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.paste,size: 32,),
              label: '',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 32,),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}