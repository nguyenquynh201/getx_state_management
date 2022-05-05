import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  var z = 0.obs;
  void increment() {
    books.value++;
    print(books.value);
  }

  void decrement() {
    if (books.value <= 0) {
      Get.snackbar('Bying Books', "Can't be less then zero",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    }else {
      books.value--;
    }
  }
  void incrementPen() {
    pens.value++;
  }
  void decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar('Bying Pens', "Can't be less then zero",
          icon: const Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    }else {
      pens.value--;
    }
  }
  void total() {
    z.value = books.value + pens.value;
  }
}
