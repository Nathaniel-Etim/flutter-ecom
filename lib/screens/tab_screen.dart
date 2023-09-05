import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecom/GetxProvider/screen_provider.dart';
import 'package:ecom/pages/home_page.dart';
import 'package:ecom/screens/cart_screen.dart';
import 'package:ecom/screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final ScreenNavigationProvider bottomNavigationBar =
      Get.put(ScreenNavigationProvider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Obx(() {
      Widget activeScreen = const HomePage();

      if (bottomNavigationBar.selectedIndexGet == 1) {
        activeScreen = const CartScreen();
      }

      if (bottomNavigationBar.selectedIndexGet == 2) {
        activeScreen = const MenuScreen();
      }

      return activeScreen;
    }), bottomNavigationBar: Obx(
      () {
        return CurvedNavigationBar(
          index: bottomNavigationBar.selectedIndexGet,
          height: 70,
          onTap: bottomNavigationBar.selectedIndexFn,
          backgroundColor: Colors.transparent,
          color: const Color(0xFF4C53A5),
          items: const [
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.shopping_cart, size: 30, color: Colors.white),
            Icon(Icons.list, size: 30, color: Colors.white),
          ],
        );
      },
    ));
  }
}
