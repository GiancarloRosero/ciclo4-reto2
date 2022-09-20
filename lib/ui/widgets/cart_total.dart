import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';

class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);
  final shoppingController = Get.find<ShoppingController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
          //TODO
          // aquí debemos observar la variable total del shoppingController
          child: Obx(
        () => Text('${shoppingController.total} usd',
            style: const TextStyle(
                fontSize: 25.0,
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400)),
      )),
    );
  }
}
