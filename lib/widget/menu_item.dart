import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      children: [
        Container(
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
        Container(
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
