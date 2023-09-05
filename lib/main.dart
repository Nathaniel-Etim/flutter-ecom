import 'package:ecom/screens/tab_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        cardTheme: const CardTheme(
          color: Color(0xFFEDECF2),

        ),
        textTheme: const TextTheme(
          titleLarge:
              TextStyle(color: Color(0xFF4C53A5), fontWeight: FontWeight.bold),
        ),
        badgeTheme: const BadgeThemeData(backgroundColor: Colors.red),
        iconTheme: const IconThemeData(color: Color(0xFF4C53A5),size: 30 ,),
      ),
      home: const TabScreen(),
    );
  }
}
