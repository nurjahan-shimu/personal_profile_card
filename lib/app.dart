import 'package:flutter/material.dart';
import 'package:personal_profile_card/profile_card_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Personal Profile Card",
      home: ProfileScreen(),

    );
  }
}
