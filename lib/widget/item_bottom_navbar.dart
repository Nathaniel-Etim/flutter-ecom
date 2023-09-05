import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecom/GetxProvider/api_controller.dart';

class ItemBottomNavBar extends StatefulWidget {
  const ItemBottomNavBar({super.key});

  @override
  State<ItemBottomNavBar> createState() => _ItemBottomNavBarState();
}

class _ItemBottomNavBarState extends State<ItemBottomNavBar> {
  FetchedData selectedItem = Get.put(FetchedData());

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2-00",
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge!.color,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context).textTheme.titleLarge!.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Buy Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    // selectedItem.onAddCartItem(
                    //   selectedItem.selectedProductGet.value["id"],
                    // );
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Theme.of(context).textTheme.titleLarge!.color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_shopping_cart,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text(
                        "Add To Cart",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
