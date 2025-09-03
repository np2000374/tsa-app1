// main.dart
import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/background.dart';
import 'screens/showcase.dart';
import 'screens/alt_design_screen.dart'; 

void main() => runApp(MyPortfolioApp());

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TSA Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/background': (context) => const BackgroundScreen(),
        '/showcase': (context) => const ShowcaseScreen(),
        '/alt': (context) => const AltDesignScreen(),
      },
    );
  }
}
