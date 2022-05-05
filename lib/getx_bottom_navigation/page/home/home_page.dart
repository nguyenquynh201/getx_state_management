import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/home/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.title , style: GoogleFonts.inter(fontWeight: FontWeight.bold , fontSize: 18 , color: Colors.black),

        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}

