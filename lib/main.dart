import 'package:family_health_history_ui/view/family_health_history/familyhealthhistory_screen.dart';
import 'package:family_health_history_ui/view/family_health_history/provider/familyhealthhistory_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => FamilyhealthhistoryProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: FamilyHealthHistoryScreen());
  }
}
