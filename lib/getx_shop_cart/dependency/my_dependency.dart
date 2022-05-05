import 'package:get/get.dart';
import 'package:getx_state_management/getx_shop_cart/controller/my_controller.dart';

class MyDependency extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyController());
  }

}