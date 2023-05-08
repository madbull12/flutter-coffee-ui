import 'package:flutter/material.dart';

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
              // InkWell(
              //   borderRadius: BorderRadius.circular(20.0),
              //   child: Container(
              //     child: Image.asset("assets/images/${images[i]}.jpg",
              //         fit: BoxFit.cover, height: 100, width: double.infinity),
              //   ),
              // )
              Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/${images[i]}.jpg"),
                          fit: BoxFit.cover))),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "${images[i]}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              )
            ]),
          )
      ],
    ));
  }
}
