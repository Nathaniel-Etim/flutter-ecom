import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../GetxProvider/api_controller.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({super.key});

  @override
  State<CartItemWidget> createState() => CartItemWidgetState();
}

class CartItemWidgetState extends State<CartItemWidget> {
  FetchedData cartItem = Get.put(
    FetchedData(),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < 5; i++)
          Container(
            height: 110,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Radio(
                value: "",
                groupValue: "",
                activeColor: const Color(0xFF4C53A5),
                onChanged: (value) {},
              ),
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.only(right: 15),
                child: Image.asset("images/1.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        "samuel",
                        maxLines: 1, // Maximum number of lines
                        textWidthBasis: TextWidthBasis.parent,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Theme.of(context).textTheme.titleLarge!.color,
                          fontSize: 18,
                          overflow: TextOverflow.fade,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "123",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.titleLarge!.color,
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 1,
                                spreadRadius: 5,
                              )
                            ],
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              CupertinoIcons.add,
                              size: 18,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Obx(
                            () {
                              const quantity = 12;
                              return Text(
                                quantity.toString(),
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .color,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 1,
                                spreadRadius: 5,
                              )
                            ],
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              CupertinoIcons.minus,
                              size: 18,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
      ],
    );
  }
}
