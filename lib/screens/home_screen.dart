import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff171717), Color(0xff2e2e2e)],
          stops: [0, 1],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Location",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xB7B7B7B7)),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Medan, Deli Serdang",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    child: Image(
                      image: AssetImage("assets/images/profile-pic.png"),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFC67C4E)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFC67C4E)),
                  ),
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  hintText: 'Search',
                ),
              ),
            ])),
        // child: ListView(
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 20),
        //       child: Row(),
        //     )
        //   ],
        // ),
      )),
    );
  }
}
