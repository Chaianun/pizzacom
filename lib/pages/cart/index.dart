import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:pizzacom/utils/colors.dart';
import 'package:pizzacom/widgets/custom_appbar.dart';
import 'package:pizzacom/widgets/custom_appbar_action.dart';

import 'controller.dart';
import 'widgets/cart_list.dart';
import 'widgets/cart_total.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: CustomAppBar(
            title: "MY CART",
            leadings: [
              CustomAppBarAction(
                () => Get.back(),
                Feather.arrow_left,
              )
            ],
          ),
          body: CartList(),
          bottomNavigationBar: CartTotal(),
        );
      },
    );
  }
}
