import 'package:flutter/material.dart';

class FamilyhealthhistoryProvider with ChangeNotifier {
  final nameController = TextEditingController(text: 'Anand Kumar');
  final ageController = TextEditingController(text: '65');
  final notesController =
      TextEditingController(text: 'Takes Medicine for Diabetes.');
  String relationship = 'Father';
}
