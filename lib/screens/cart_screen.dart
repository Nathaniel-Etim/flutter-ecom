import 'package:ecom/GetxProvider/api_controller.dart';
import 'package:ecom/GetxProvider/screen_provider.dart';
import 'package:ecom/widget/cart_bottom_navbar.dart';
import 'package:ecom/widget/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenNavigationProvider backBtn = Get.put(ScreenNavigationProvider());
    FetchedData cartItem = Get.put(FetchedData());

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Cart appBar
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: Theme.of(context).cardColor.withOpacity(0.7),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      backBtn.selectedIndexFn(0);
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
                        fontWeight: FontWeight.bold,
                      ),
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
            // Cart body
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 7),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardTheme.color,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Column(
                      children: [
                        const CartItemWidget(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue, // Change to desired color
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child:
                                    const Icon(Icons.add, color: Colors.white),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Text(
                                  "Add Coupon Code",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color:
                                        Colors.blue, // Change to desired color
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const CartBottomNavBar()
          ],
        ),
      ),
    );
  }
}
