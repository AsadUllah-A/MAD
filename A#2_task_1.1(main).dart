import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'list_screen.dart';
import 'about_screen.dart';

void main() {
  runApp(TravelGuideApp());
}

class TravelGuideApp extends StatefulWidget {
  @override
  _TravelGuideAppState createState() => _TravelGuideAppState();
}

class _TravelGuideAppState extends State<TravelGuideApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ListScreen(),
    AboutScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Guide',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Travel Guide', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: _screens[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.teal,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Destinations',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
