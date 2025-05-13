import 'package:family_health_history_ui/view/family_health_history/familyhealthhistory_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: FamilyHealthHistoryScreen());
  }
}
