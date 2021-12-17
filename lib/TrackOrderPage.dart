import 'package:flutter/material.dart';
import 'package:ironsho_app/StyleScheme.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: trackOrderPage(),
    );
  }
}

class trackOrderPage extends StatefulWidget {
  @override
  _trackOrderPageState createState() => _trackOrderPageState();
}

class _trackOrderPageState extends State<trackOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          " Track Order ",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order Number 1001",
              style: headingStyle,
            ),
            Text(
              "Order Confirmed. Ready to Pick",
              style: contentStyle.copyWith(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 1,
              color: Colors.grey,
            ),
            Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 4,
                    height: 306,
                    color: Colors.grey),
                Column(
                  children: [
                    statusWidget('confirmed', "Confirmed", true),
                    statusWidget('onBoard2', "Picked Up", false),
                    statusWidget('serviceslmg', "In Process", false),
                    statusWidget('shipped', "Shipped", false),
                    statusWidget('Delivery', "Delivered", false),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 1,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.orange)),
                  child: Text(
                    "Cancel order",
                    style: contentStyle.copyWith(
                      color: Colors.orange,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.orange),
                  child: Text(
                    "My orders",
                    style: contentStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 15,
        onTap: (value) => {},
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes), title: Text("Track Order")),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list), title: Text("My Orders")),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), title: Text("Profile")),
        ],
      ),
    );
  }

  Container statusWidget(String img, String status, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (isActive) ? Colors.orange : Colors.white,
                border: Border.all(
                    color: (isActive) ? Colors.transparent : Colors.orange,
                    width: 3)),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
              Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/$img.png"),
                        fit: BoxFit.contain)),
              ),
              Text(
                status,
                style: contentStyle.copyWith(
                  color: (isActive) ? Colors.orange : Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
