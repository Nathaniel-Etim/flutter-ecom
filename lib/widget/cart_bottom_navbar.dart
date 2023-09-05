import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../GetxProvider/api_controller.dart';

class CartBottomNavBar extends StatefulWidget {
  const CartBottomNavBar({super.key});

  @override
  State<CartBottomNavBar> createState() => _CartBottomNavBarState();
}

class _CartBottomNavBarState extends State<CartBottomNavBar> {
  FetchedData cartItem = Get.put(
    FetchedData(),
  );

  @override
  Widget build(BuildContext context) {
    int totalPrice = 0;



    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total:",
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge!.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                "134",
                style: TextStyle(
                  fontSize: 22,
                  color: Theme.of(context).textTheme.titleLarge!.color,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).textTheme.titleLarge!.color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Buy now",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
