import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx_builder/page/first_page.dart';
import 'package:getx_state_management/getx_builder/controller/tab_controller.dart';
import 'package:google_fonts/google_fonts.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TabsController tabController = Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TabsController>(builder: (tabController) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 70,
                margin: const EdgeInsets.symmetric(vertical: 10),
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
                tabController.increment();
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
                    '+',
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
                tabController.decrement();
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 70,
                margin: const EdgeInsets.symmetric(vertical: 10),
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
                Get.to(() => const FirstPage());
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 70,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    'Go to First App',
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
