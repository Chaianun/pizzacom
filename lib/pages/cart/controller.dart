import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:pizzacom/utils/colors.dart';

import '../../controller.dart';

class CartController extends GetxController {
  final AppController appController = Get.find();

  String get total {
    double fold = appController.cart.value.fold(0, (subtotal, cartItem) {
      return subtotal + cartItem.subtotal * cartItem.quantity.value;
    });
    return "U\$" + fold.toStringAsFixed(2);
  }

  deleteItem(int position) {
    appController.cart.removeAt(position);
  }

  placeOrder() {
    appController.cart.clear();
    Get.back();
    Get.snackbar(
      "Placed",
      "Your pizza is going to launch!",
      backgroundColor: AppColors.DARK,
      colorText: AppColors.WHITE,
      padding: EdgeInsets.all(15),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(25),
      icon: Icon(
        Feather.check,
        color: AppColors.RED,
        size: 21,
      ),
    );
  }
}
