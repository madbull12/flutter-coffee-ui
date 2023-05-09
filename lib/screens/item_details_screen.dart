import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  String img;
  ItemDetailsScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0xff212325),
      child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                        const Text("Detail",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                        const Icon(Icons.favorite_outline_outlined,
                            color: Colors.white)
                      ],
                    )),
                SizedBox(
                  height: 50,
                ),
                Center(
                    child: Image.asset(
                  "assets/images/$img.jpg",
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                )),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BEST COFFEE",
                          style:
                              TextStyle(color: Colors.white, letterSpacing: 1)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            "4.8",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "(230)",
                            style: TextStyle(
                              color: Colors.white.withOpacity(.4),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        img,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                          "Coffee is a warm hug in a mug, a gentle nudge to start the day, a companion in solitude, and a symbol of comfort and community.",
                          style:
                              TextStyle(color: Colors.white.withOpacity(.4))),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.4),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "\$\ 3.90",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFFC67C4E),
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Perform login action
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(
                                  0xFFC67C4E), // Sets the background color to #C67C4E
                            ),
                            child: const Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    ));
  }
}
