
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/add/add_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPage extends GetView<AddController> {
  const AddPage({Key? key}) : super(key: key);

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
              Obx(() => Text('${controller.counter.value}',
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold))),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: Text('Increment'),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
