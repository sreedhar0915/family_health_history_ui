import 'package:family_health_history_ui/helpers/app_colors.dart';
import 'package:family_health_history_ui/helpers/screen_config.dart';
import 'package:flutter/material.dart';

class FamilyHealthHistoryScreen extends StatefulWidget {
  @override
  FamilyHealthHistoryScreenState createState() =>
      FamilyHealthHistoryScreenState();
}

class FamilyHealthHistoryScreenState extends State<FamilyHealthHistoryScreen> {
  final nameController = TextEditingController(text: 'Anand Kumar');
  final ageController = TextEditingController(text: '65');
  final notesController =
      TextEditingController(text: 'Takes Medicine for Diabetes.');
  String relationship = 'Father';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.getInstance().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Family Health His',
                  style: TextStyle(
                    backgroundColor: ColorConstants.yellow,
                    color: ColorConstants.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'tory',
                  style: TextStyle(color: ColorConstants.black, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: ColorConstants.white,
        surfaceTintColor: ColorConstants.white,
        foregroundColor: ColorConstants.black,
        elevation: 0,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                "Help doctors understand your genetic risks by uploading your ",
                maxLines: 2,
                style: TextStyle(fontSize: 14, color: ColorConstants.grey),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'family health his',
                    style: TextStyle(
                      backgroundColor: ColorConstants.yellow,
                      color: ColorConstants.black,
                      fontSize: 18,
                    ),
                  ),
                  TextSpan(
                    text: 'tory',
                    style: TextStyle(color: ColorConstants.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 6),
              child: Text(
                "Name (optional)",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.Textfieldcolor,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  //  hintText: "Anand Kumar",
                  filled: true,
                  fillColor: ColorConstants.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 6),
              child: Text(
                "Relationship",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.Textfieldcolor,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButtonFormField<String>(
                  value: relationship,
                  items: ['Father', 'Mother', 'Sibling'].map((value) {
                    return DropdownMenuItem(value: value, child: Text(value));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      relationship = value!;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 6),
              child: Text(
                "Age",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.Textfieldcolor,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: ageController,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  // hintText: "65",
                  filled: true,
                  fillColor: ColorConstants.Textfieldcolor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 6),
              child: Text(
                "Health Condition",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.Textfieldcolor,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  hintText: "Search for health conditions",
                  filled: true,
                  fillColor: ColorConstants.Textfieldcolor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: ColorConstants.buttoncolor,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Text(
                "Diabetes",
                style: TextStyle(color: ColorConstants.white, fontSize: 20),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 6),
              child: Text(
                "Reports(optional)",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: 350,
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Comprehensive Health Summary"),
                  Icon(Icons.close),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 6),
              child: Text(
                "Notes (optional)",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.Textfieldcolor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: notesController,
                decoration: InputDecoration(
                  // hintText: "Takes Medicine for diabetes",
                  filled: true,
                  fillColor: ColorConstants.Textfieldcolor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.buttoncolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorConstants.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
