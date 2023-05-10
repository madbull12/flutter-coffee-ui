import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key, required this.img}) : super(key: key);

  final String img;
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _quantity = 0;

  addQuantity() {
    setState(() {
      _quantity += 1;
    });
  }

  decrementQuantity() {
    setState(() {
      if (_quantity == 0) {
        return;
      }
      _quantity -= 1;
    });
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff212325),
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.34,
                    ),
                    const Text("Order",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TabBar(
                    indicator: const UnderlineTabIndicator(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xFFC67C4E)),
                        insets: EdgeInsets.symmetric(horizontal: 16)),
                    controller: _tabController,
                    physics: const BouncingScrollPhysics(),
                    labelColor: const Color(0xFFC67C4E),
                    unselectedLabelColor: Colors.white,
                    isScrollable: true,
                    tabs: const [
                      Tab(
                        text: "Delivery",
                      ),
                      Tab(
                        text: "Pick Up",
                      ),
                    ]),
                const SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Delivery Address",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 16)),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const Text("Jl. Setia Budi",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 14)),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Setia budi no 11 Lubuk Pakam, Deli serdang",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      InkWell(
                        customBorder: Border.all(style: BorderStyle.solid),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(.4),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Edit Address",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      InkWell(
                        customBorder: Border.all(style: BorderStyle.solid),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(.4),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.note,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Add Note",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/${widget.img}.jpg',
                            width: 54.0,
                            height: 54.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          "${widget.img}",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 32.0,
                        ),
                        InkWell(
                          onTap: () => decrementQuantity(),
                          child: Container(
                              width: 40,
                              height: 40,
                              // padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withOpacity(.4),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          _quantity.toString(),
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        InkWell(
                          onTap: () => addQuantity(),
                          child: Container(
                              width: 40,
                              height: 40,
                              // padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withOpacity(.4),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.white.withOpacity(.2), width: 1.0)),
                    child: Row(children: [
                      Icon(
                        Icons.discount_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text("1 discount is applied",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white))
                    ]),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Summary",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              "\$\ ${_quantity * 3.90}",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Fee",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              "\$\ 1.00",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.white.withOpacity(.4)))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Payment",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white.withOpacity(0.7)),
                              ),
                              Text(
                                "\$\ ${_quantity * 3.90 + 1.00}",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: 16.0,
                        // ),
                        Row(
                          children: [
                            Icon(
                              Icons.money_rounded,
                              size: 32,
                              color: Color(0xFFC67C4E),
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            InkWell(
                                child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC67C4E),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Text(
                                "Cash",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                            SizedBox(
                              width: 16.0,
                            ),
                            Text(
                              "\$\ ${_quantity * 3.90 + 1.00}",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 30.0),
                            alignment: Alignment.center,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xFFC67C4E),
                            ),
                            child: Text(
                              "Order",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
