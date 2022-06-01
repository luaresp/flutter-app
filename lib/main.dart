import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'TGR One',
        debugShowCheckedModeBanner:
            false, // dejar en desarrollo y QA, quitar en produccion
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: HomeScreen(),
      );
    });
  }
}
