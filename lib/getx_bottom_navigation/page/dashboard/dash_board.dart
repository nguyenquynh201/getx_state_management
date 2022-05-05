import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx_bottom_navigation/navigation/custom_animated_bottom_bar.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/add/add_page.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/dashboard/dash_board_controller.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/home/home_page.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/messages/messages_page.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/users/user_page.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                const HomePage(),
                const UsersPage(),
                const MessagesPage(),
                const AddPage()
              ],
            ),
          ),
          bottomNavigationBar: CustomAnimatedBottomBar(
              selectedIndex: controller.tabIndex,
              backgroundColor: Colors.white,
              containerHeight: 70,
              showElevation: true,
              itemCornerRadius: 24,
              curve: Curves.easeIn,
              naviBarItem: <BottomNaviBarItem>[
                BottomNaviBarItem(
                    icon: Icon(Icons.apps),
                    title: Text('Home'),
                    activeColor: Colors.green,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center),
                BottomNaviBarItem(
                    icon: Icon(Icons.people),
                    title: Text('Users'),
                    activeColor: Colors.purpleAccent,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center),
                BottomNaviBarItem(
                    icon: Icon(Icons.message),
                    title: Text('Message'),
                    activeColor: Colors.pink,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center),
                BottomNaviBarItem(
                    icon: Icon(Icons.add),
                    title: Text('Counter'),
                    activeColor: Colors.blue,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center),
              ],
              onItemSelected: controller.changeTabIndex));
    });
  }
}
