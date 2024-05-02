import 'package:ecom/GetxProvider/api_controller.dart';
import 'package:ecom/GetxProvider/screen_provider.dart';
import 'package:ecom/widget/item_widget.dart';
import 'package:ecom/widget/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../widget/Categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  ScreenNavigationProvider goToCart = Get.put(ScreenNavigationProvider());

  FetchedData productData = Get.put(FetchedData());

  void onShowDrawer() {
    _drawerKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    Widget spinkit = const SpinKitWaveSpinner(
      color: Color(0xFF4C53A5),
      size: 60,
      curve: Curves.bounceInOut,
      waveColor: Color(0xCB4C53A5),
      trackColor: Colors.transparent,
    );

    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        drawer: const Drawer(
          width: 260,
          child: MenuItem(),
        ),
        body: Column(
          children: [
            // const SizedBox(
            //   height: 40,
            // ),
            Container(
              color: Theme.of(context).cardColor.withOpacity(0.7),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  InkWell(
                    onTap: onShowDrawer,
                    child: const Icon(
                      Icons.sort,
                      size: 30,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "Anoda world",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Badge(
                    textColor: Colors.white,
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.all(2.7),
                    label: const Text(
                      "3",
                      style: TextStyle(color: Colors.white),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          goToCart.selectedIndexFn(1);
                        });
                      },
                      child: const Icon(
                        Icons.shopping_bag_outlined,
                        size: 32,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  padding: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    color: Color(0xFFEDECF2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              height: 50,
                              width: 280,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search here ...",
                                ),
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.camera_alt,
                              size: 27,
                              color: Color(0xFF4C53A5),
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: const Text(
                          "Categories",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5)),
                        ),
                      ),
                      //  categories
                      const CategoryWidget(),
                      //  items
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: const Text(
                          "Best Selling",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5)),
                        ),
                      ),
                      // productData.getIsLoading ? spinkit : const ItemWidget(),
                      const ItemWidget(),
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
