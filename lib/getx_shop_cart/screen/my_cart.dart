import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx_shop_cart/controller/my_controller.dart';
import 'package:getx_state_management/getx_shop_cart/screen/total_detail.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final MyController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Books',
                    style: GoogleFonts.inter(
                        fontSize: 20, color: Colors.amberAccent)),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: IconButton(
                          onPressed: () {
                            controller.increment();
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(width: 20),
                    Obx(() => Text('${controller.books.value}',
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.amberAccent,
                            fontWeight: FontWeight.bold))),
                    SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: IconButton(
                          onPressed: () {
                            controller.decrement();
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          )),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pens',
                    style: GoogleFonts.inter(
                        fontSize: 20, color: Colors.amberAccent)),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: IconButton(
                          onPressed: () {
                            controller.incrementPen();
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(width: 20),
                    Obx(() => Text('${controller.pens.value}',
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.amberAccent,
                            fontWeight: FontWeight.bold))),
                    SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: IconButton(
                          onPressed: () {
                            controller.decrementPens();
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          )),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const TotalDetail());
                controller.total();
              },
              child: Text('Total'),
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
