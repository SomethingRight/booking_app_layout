import 'package:booking_tickets_app/utils/app_styles.dart';

import 'presentation/screens/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyTickets',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

 @override
  Widget build(BuildContext context) {
    return const BottomBar();
  }
}
