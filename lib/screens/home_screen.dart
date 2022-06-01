import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      //* AppBar
      appBar: AppBar(
        title: Center(child: const Text('TGR One')),
        elevation: 0,
      ),

      //? body
      body: PageView(children: [
        CustomScreen(color: Colors.pink),
        CustomScreen(color: Colors.blue),
        CustomScreen(color: Colors.indigo)
      ]),

      //* Tabs
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.3),
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.verified_user_outlined), label: 'User'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color;
  const CustomScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
            'No te rindas, aún estás a tiempo de alcanzar y comenzar de nuevo'),
      ),
    );
  }
}
