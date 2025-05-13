import 'package:family_health_history_ui/helpers/app_colors.dart';
import 'package:family_health_history_ui/helpers/screen_config.dart';
import 'package:family_health_history_ui/helpers/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Family Health His',
              style: GoogleFonts.roboto(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                backgroundColor: ColorConstants.yellow,
                color: ColorConstants.black,
              ),
            ),
            Text(
              'tory',
              style: GoogleFonts.roboto(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: ColorConstants.black,
              ),
            ),
          ],
        ),
        backgroundColor: ColorConstants.white,
        surfaceTintColor: ColorConstants.white,
        foregroundColor: ColorConstants.black,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 20.sp,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                size: 20.sp,
              )),
          SizedBox(width: 10.w)
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Help doctors understand your genetic risks by uploading your ",
              maxLines: 2,
              style: GoogleFonts.roboto(
                  fontSize: 14.sp, color: ColorConstants.grey),
            ),
            Row(
              children: [
                Text(
                  'Family Health His',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    backgroundColor: ColorConstants.yellow,
                    color: ColorConstants.black,
                  ),
                ),
                Text(
                  'tory',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 6.h),
              child: Text(
                "Name (optional)",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.Textfieldcolor,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.grey.withOpacity(0.4),
                    spreadRadius: 1.r,
                    blurRadius: 8.r,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: nameController,
                style: GoogleFonts.roboto(fontSize: 14.sp),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorConstants.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 6.h),
              child: Text(
                "Relationship",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.Textfieldcolor,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.grey.withOpacity(0.4),
                    spreadRadius: 1.r,
                    blurRadius: 8.r,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: DropdownButtonFormField<String>(
                  value: relationship,
                  style:
                      GoogleFonts.roboto(fontSize: 14.sp, color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),
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
              padding: EdgeInsets.only(top: 20.h, bottom: 6.h),
              child: Text(
                "Age",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.Textfieldcolor,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.grey.withOpacity(0.4),
                    spreadRadius: 1.r,
                    blurRadius: 8.r,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: ageController,
                keyboardType: TextInputType.numberWithOptions(),
                style: GoogleFonts.roboto(fontSize: 14.sp),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorConstants.Textfieldcolor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 6.h),
              child: Text(
                "Health Condition",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.Textfieldcolor,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1.r,
                    blurRadius: 8.r,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                style: GoogleFonts.roboto(fontSize: 14.sp),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  hintText: "Search for health conditions",
                  filled: true,
                  fillColor: ColorConstants.Textfieldcolor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Container(
              height: 50.h,
              width: 150.w,
              decoration: BoxDecoration(
                color: ColorConstants.buttoncolor,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Center(
                child: Text(
                  "Diabetes",
                  style: GoogleFonts.roboto(
                      color: ColorConstants.white, fontSize: 20.sp),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 6.h),
              child: Text(
                "Reports(optional)",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
            ),
            Container(
              width: 350.w,
              margin: EdgeInsets.only(top: 8.h),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Comprehensive Health Summary",
                      style: GoogleFonts.roboto(fontSize: 14.sp)),
                  Icon(Icons.close),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 6.h),
              child: Text(
                "Notes (optional)",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.Textfieldcolor,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.grey.withOpacity(0.4),
                    spreadRadius: 1.r,
                    blurRadius: 8.r,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: notesController,
                style: GoogleFonts.roboto(fontSize: 14.sp),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorConstants.Textfieldcolor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.buttoncolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                  ),
                  child: Text(
                    'Save',
                    style: GoogleFonts.roboto(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.white,
                    ),
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
