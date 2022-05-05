import 'package:get/get.dart';
import 'package:getx_state_management/getx_builder/controller/list_controller.dart';
import 'package:getx_state_management/getx_builder/controller/tab_controller.dart';
Future<void> initController() async{
  Get.lazyPut(() => TabsController());
  Get.lazyPut(() => ListController());
}