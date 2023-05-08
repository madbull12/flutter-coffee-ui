import 'package:coffee_shop_app/widgets/items_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<String> categories = [
    'Espresso',
    'Latte',
    'Cappuccino',
    'Mocha',
    'Americano',
    'Flat White',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 32, 32, 32)
          ],
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
                      style: TextStyle(fontSize: 12, color: Color(0xB7B7B7B7)),
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
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  suffixIcon: const Icon(Icons.clear, color: Colors.white),
                  fillColor: const Color(0x31313131),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFC67C4E)),
                  ),
                  hintStyle: const TextStyle(color: Color(0x98989898)),
                  hintText: 'Search coffee',
                  filled: true,
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Image(image: AssetImage('assets/images/promo-banner.png')),
            const SizedBox(
              height: 16.0,
            ),
            TabBar(
                indicator: const UnderlineTabIndicator(
                    borderSide:
                        BorderSide(width: 3, color: const Color(0xFFC67C4E)),
                    insets: EdgeInsets.symmetric(horizontal: 16)),
                controller: _tabController,
                physics: const BouncingScrollPhysics(),
                labelColor: const Color(0xFFC67C4E),
                unselectedLabelColor: Colors.white,
                isScrollable: true,
                tabs: [
                  for (int i = 0; i < categories.length; i++)
                    Tab(
                      text: categories[i],
                    )
                ]),
            const ItemsWidget()
          ]),
        ),
        // child: ListView(
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 20),
        //       child: Row(),
        //     )
        //   ],
        // ),
      ))),
    );
  }
}
