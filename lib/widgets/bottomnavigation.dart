import 'package:flutter/material.dart';
import 'package:widgets_task/widgets/gridview.dart';
import 'package:widgets_task/widgets/appbar.dart';
import 'package:widgets_task/widgets/login%20screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
    int selectedIndex = 0;
  static const List productoption=[
    Product(),
    MyProduct(),
    MyLoginScreen(),
    Text('Profile',
      style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
    ),

  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: productoption.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items:const  [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.cyan,

          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.favorite),
            label: 'favorite',
            backgroundColor: Colors.cyan,
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.cyan,
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.cyan,
          ),
        ],
        onTap: onItemTapped,

      ),
    );
  }
}
