import 'package:get/get.dart';

class TabsController extends GetxController {
  int _x = 0;

  int get x => _x;

  RxInt _y = 0.obs;

  RxInt get y => _y;
  RxInt _z  = 0.obs;
  int get z => _z.value;

  void increment() {
    _x++;
    update();
  }

  void decrement() {
    _x--;
    update();
  }

  void incrementY() {
    _y.value++;

  }

  void decrementY() {
    _y.value--;

  }
  void totalXY() {
    _z.value = x+y.value;
    print(z);

  }
}
