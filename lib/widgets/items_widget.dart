import 'package:coffee_shop_app/screens/item_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  static final List<String> images = [
    "americano",
    "cappuccino",
    "caramel",
    "latte",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: GridView.count(
      crossAxisCount: 2,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < images.length; i++)
          Container(
            // padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff212325),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.4),
                      spreadRadius: 1,
                      blurRadius: 8)
                ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemDetailsScreen(images[i]))),
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    width: double.infinity,
                    height: 120.0,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/${images[i]}.jpg"),
                            fit: BoxFit.cover))),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${images[i]}".capitalize(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        const Text(
                          "Best",
                          style: TextStyle(
                              color: Color(0x9b9b9b9b), fontSize: 12.0),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("\$\ 3.90",
                                style: TextStyle(
                                    color: Color(0xFF2F4B4E),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0)),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFC67C4E),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Icon(
                                CupertinoIcons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ]))
            ]),
          )
      ],
    ));
  }
}
