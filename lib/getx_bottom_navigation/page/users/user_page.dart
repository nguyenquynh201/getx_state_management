import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/add/add_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  AddController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User Number',
                style: GoogleFonts.inter(fontSize: 25, color: Colors.black)),
            const SizedBox(height: 20),
            const Divider(),
            Obx(() => Text(
                  "${controller.counter.value}",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold)
                ))
          ],
        ),
      ),
    );
  }
}
