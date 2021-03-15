
import 'package:get/state_manager.dart';

import 'models/pizza_cart.model.dart';

class AppController extends GetxController{
  RxList<PizzaCart> cart = RxList<PizzaCart>([]);
}