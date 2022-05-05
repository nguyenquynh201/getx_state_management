import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx_builder/page/second_page.dart';

import 'package:getx_state_management/getx_builder/controller/tab_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    TabsController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Get.back();
          },
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           GetBuilder<TabsController>(builder: (tabController) {
             return Container(
               margin: const EdgeInsets.symmetric(vertical: 10),
               width: MediaQuery.of(context).size.width * 0.8,
               height: 70,
               padding:
               const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.green),
               child: Center(
                 child: Text(
                   '${tabController.x}',
                   style: GoogleFonts.inter(
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                       color: Colors.white),
                 ),
               ),
             );
           }),
            GestureDetector(
              onTap: () {
                controller.decrement();
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 70,
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    '-',
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const SecondPage());
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 70,
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    'Second Page',
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
