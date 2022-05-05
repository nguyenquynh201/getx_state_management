import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx_shop_cart/controller/my_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalDetail extends StatefulWidget {
  const TotalDetail({Key? key}) : super(key: key);

  @override
  State<TotalDetail> createState() => _TotalDetailState();
}

class _TotalDetailState extends State<TotalDetail> {
  MyController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total items',
                style:
                    GoogleFonts.inter(fontSize: 30, color: Colors.blueAccent)),
            Obx(() => Text('${controller.z.value}',
                style: GoogleFonts.inter(fontSize: 30, color: Colors.red))),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Go back'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.4, 50)),
            )
          ],
        ),
      ),
    );
  }
}
