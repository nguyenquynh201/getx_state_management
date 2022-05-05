import 'package:get/get.dart';
import 'package:getx_state_management/getx_builder/controller/tab_controller.dart';

import '../controller/list_controller.dart';

class InitDependency extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabsController());
    Get.lazyPut(() => ListController());
  }

}