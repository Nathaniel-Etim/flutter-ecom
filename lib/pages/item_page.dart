import 'package:clippy_flutter/arc.dart';
import 'package:ecom/GetxProvider/api_controller.dart';
import 'package:ecom/Models/product_response.dart';
import 'package:ecom/widget/item_bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key, required this.selectedItem});

  final ProductResponse selectedItem;

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  List<Color> colrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange
  ];

  FetchedData selectedItem = Get.put(FetchedData());

  @override
  Widget build(BuildContext context) {
    var item = widget.selectedItem;
    return Scaffold(
      backgroundColor: const Color(0xFFEDECF2),
      body: Column(children: [
        // appbar
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).iconTheme.color,
                  size: 30,
                ),
              ),
              Container(
                width: 260,
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  item.title ?? '',
                  textWidthBasis: TextWidthBasis.parent,
                  maxLines: 1, // Maximum number of lines
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge!.color,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.favorite,
                size: 30,
                color: Colors.red,
              )
            ],
          ),
        ),
        //  item details
        Expanded(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.network(
                item.image ?? '',
                height: 300,
              ),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 15),
                      child: Row(children: [
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: 300, // Width constraint
                          child: Text(
                            item.title ?? '',
                            maxLines: 1, // Maximum number of lines
                            textWidthBasis: TextWidthBasis.parent,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).textTheme.titleLarge!.color,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$${item.price.toString()}',
                          // Include the dollar sign before the price variable
                          maxLines: 1, // Maximum number of lines
                          textWidthBasis: TextWidthBasis.parent,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.titleLarge!.color,
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            itemBuilder: (context, index) => Icon(
                              Icons.favorite,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            onRatingUpdate: (value) {},
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurStyle: BlurStyle.solid,
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          offset: const Offset(0, 3),
                                        )
                                      ]),
                                  child: const Icon(
                                    CupertinoIcons.plus,
                                    size: 18,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "01",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .color,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurStyle: BlurStyle.solid,
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                          offset: const Offset(0, 3),
                                        )
                                      ]),
                                  child: const Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                  ),
                                )
                              ])
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      // height: 110,
                      child: Text(
                        item.description ?? '',
                        maxLines: 3, // Maximum number of lines
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).textTheme.titleLarge!.color,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    //size
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(children: [
                        Text(
                          "Size:",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.titleLarge!.color,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            for (var i = 5; i < 10; i++)
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      )
                                    ]),
                                child: Text(
                                  i.toString(),
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .color,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              )
                          ],
                        )
                      ]),
                    ),
                    // colors
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(children: [
                        Text(
                          "Color:",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.titleLarge!.color,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            for (var i = 0; i < colrs.length; i++)
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: colrs[i],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    )
                                  ],
                                ),
                              )
                          ],
                        )
                      ]),
                    ),
                  ]),
                ),
              ),
            ),
          ]),
        ),
      ]),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
