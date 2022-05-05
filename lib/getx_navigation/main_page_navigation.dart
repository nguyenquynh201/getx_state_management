import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx_navigation/page/page_one.dart';
import 'package:getx_state_management/getx_navigation/page/page_two.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPageNavigation extends StatefulWidget {
  const MainPageNavigation({Key? key}) : super(key: key);

  @override
  State<MainPageNavigation> createState() => _MainPageNavigationState();
}

class _MainPageNavigationState extends State<MainPageNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              RichText(
                  text: TextSpan(
                      text: 'First GetX',
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => const PageOne()))),
              SizedBox(height: 20),
              RichText(
                  text: TextSpan(
                      text: 'Second GetX',
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            Get.to(() => const PageTwo(),
                                arguments: {
                                  "price": Random().nextInt(10000).toString()
                                }))),
              SizedBox(height: 100),
              Spacer(),
              Container(
                alignment: Alignment.bottomCenter,
                width: double.maxFinite,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amberAccent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () => Get.toNamed('/course-page' , arguments: {
                          'price' : Random().nextInt(10000).toString(),
                          'text' : "Course Free"
                        }),
                            child: Text('Course', style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),)),
                        SizedBox(width: 20),
                        ElevatedButton(onPressed: () => Get.toNamed('/course-pages/${Random().nextInt(10000).toString()}'),
                            child: Text('More', style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
