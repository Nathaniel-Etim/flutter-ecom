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
            height: 120,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: '',
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          child: Text(
                            "samuel",
                            maxLines: 1, // Maximum number of lines
                            textWidthBasis: TextWidthBasis.parent,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.titleLarge!.color,
                              fontSize: 18,
                              overflow: TextOverflow.fade,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "123",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.titleLarge!.color,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Text(
                            'Remove',
                            style: TextStyle(
                              fontSize: 10,
                              color:
                                  Theme.of(context).textTheme.titleLarge!.color,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  ),
                ]),
          ),
      ],
    );
  }
}
