import 'package:clippy_flutter/arc.dart';
import 'package:ecom/widget/menu_item.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: Column(children: [
        Arc(
          height: 30,
          arcType: ArcType.CONVEX,
          edge: Edge.BOTTOM,
          child: Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            // margin: EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Nathaniel",
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.titleLarge!.color,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "Wallet: \$30",
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.titleLarge!.color,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.settings,
                      color: Theme.of(context).iconTheme.color,
                      size: 25,
                    )
                  ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF4C53A5),
                  ),
                  child: const Text(
                    "Pending Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF4C53A5),
                  ),
                  child: const Text(
                    "Approved Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Colors.grey.withOpacity(0.5),
        ),
        const Expanded(
          child: MenuItem(),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          decoration: BoxDecoration(
            color: const Color(0xFF4C53A5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 8, spreadRadius: 1)
            ],
          ),
          child:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Logout",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.login_outlined,
              color: Colors.white,
              size: 17,
            )
          ]),
        )
      ]),
    );
  }
}
