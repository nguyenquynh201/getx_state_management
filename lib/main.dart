import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/dashboard/dash_board.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/dashboard/dashboard_bindings.dart';
import 'package:getx_state_management/getx_builder/helper/init_dependency.dart';
import 'package:getx_state_management/getx_builder/page/main_page.dart';
import 'package:getx_state_management/getx_navigation/main_page_navigation.dart';
import 'package:getx_state_management/getx_navigation/page/page_four.dart';
import 'package:getx_state_management/getx_shop_cart/dependency/my_dependency.dart';

import 'getx_navigation/page/page_three.dart';
import 'getx_shop_cart/screen/my_cart.dart';


Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await di.initController();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: DashBoardBindings(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        // GetPage(name: '/course-page', page: () => const PageThree()),
        // GetPage(name: '/course-pages/:data', page: () => const PageFour()),
        GetPage(name: "/", page: () => const DashBoardPage() ,binding: DashBoardBindings())
      ],
    );
  }
}

