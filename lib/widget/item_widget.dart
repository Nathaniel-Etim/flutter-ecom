import 'package:ecom/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import '../GetxProvider/api_controller.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  final FetchedData products = Get.put(FetchedData());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(
          () => GridView.count(
            childAspectRatio: 0.61,
            crossAxisCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              for (var i = 0; i < products.getProductMap.length; i++)
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        child: ItemPage(
                          selectedItem: products.getProductMap[i],
                        ),
                        duration: const Duration(milliseconds: 1000),
                      ),
                    );
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: const Color(0xFF4C53A5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                "-50%",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: Image.network(
                              products.getProductMap[i].image.toString(),
                              height: 120,
                              width: 120,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          alignment: Alignment.centerLeft,
                          height: 30,
                          child: Text(
                            products.getProductMap[i].title.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 20,
                          child: Text(
                            products.getProductMap[i].description.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF4C53A5),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                products.getProductMap[i].price.toString(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4C53A5),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.shopping_cart_checkout,
                                  color: Color(0xFF4C53A5),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
        // Loader
      ],
    );
  }
}
