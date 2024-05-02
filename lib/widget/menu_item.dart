import 'package:ecom/GetxProvider/screen_provider.dart';
import 'package:ecom/screens/profile_page.dart';
import 'package:ecom/screens/tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({super.key});

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  ScreenNavigationProvider goToCart = Get.put(ScreenNavigationProvider());

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProfileWidget(),
            ));
          },
          child: Container(
            margin: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge!.color,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Theme.of(context).iconTheme.color,
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TabScreen(),
              ),
            );
            setState(() {
              goToCart.selectedIndexFn(1);
            });
          },
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cart",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge!.color,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Theme.of(context).iconTheme.color,
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Security Setting",
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge!.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: Theme.of(context).iconTheme.color,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment Details",
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge!.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: Theme.of(context).iconTheme.color,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Support",
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge!.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: Theme.of(context).iconTheme.color,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rate Us",
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge!.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: Theme.of(context).iconTheme.color,
              )
            ],
          ),
        ),
      ],
    );
  }
}
