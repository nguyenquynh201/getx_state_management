import 'package:get/get.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/add/add_controller.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/dashboard/dash_board_controller.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/home/home_controller.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/messages/message_controller.dart';
import 'package:getx_state_management/getx_bottom_navigation/page/users/user_controller.dart';

class DashBoardBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<AddController>(() => AddController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<UsersController>(() => UsersController());
    Get.lazyPut<MessageController>(() => MessageController());
  }
}
