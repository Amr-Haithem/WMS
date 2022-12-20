import 'package:flutter/material.dart';

import 'ui/TabBarScreen.dart';

import 'package:storage_management_system/ui/TabBarScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Storage Management System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const TabBarScreen(),
    );
  }
}
