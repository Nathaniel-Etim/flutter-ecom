import 'package:ecom/GetxProvider/api_controller.dart';
import 'package:ecom/GetxProvider/screen_provider.dart';
import 'package:ecom/widget/cart_bottom_navbar.dart';
import 'package:ecom/widget/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  ScreenNavigationProvider BackBtn = Get.put(
    ScreenNavigationProvider(),
  );

  FetchedData cartItem = Get.put(FetchedData());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Cart appBar
            Container(
              // height: 203,
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              color: Theme.of(context).cardColor.withOpacity(0.7),
              // color: Colors.indigo,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      BackBtn.selectedIndexFn(0);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Cart",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.titleLarge!.color,
                          fontSize:
                              Theme.of(context).textTheme.titleLarge!.fontSize,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.more_vert,
                    size: Theme.of(context).iconTheme.size,
                  )
                ],
              ),
            ),
            //cart body
            Obx(
              () => Expanded(
                child: ListView(children: [
                  Container(
                    padding: const EdgeInsets.only(top: 7),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardTheme.color,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Column(children: [
                      const CartItemWidget(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        padding: const EdgeInsets.all(10),
                        child: Row(children: [
                          Container(
                            decoration: BoxDecoration(
                              color:
                                  Theme.of(context).textTheme.titleLarge!.color,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(Icons.add, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Text(
                              "Add Coupon Code",
                              style: TextStyle(
                                fontSize: 15,
                                color: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .color,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ]),
                      )
                    ]),
                  ),
                ]),
              ),
            ),
            const CartBottomNavBar()
          ]),
    );
  }
}
