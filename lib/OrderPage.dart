import 'package:flutter/material.dart';
import 'package:ironsho_app/LoginPage.dart';
import 'package:ironsho_app/StyleScheme.dart';

import 'PickUpTimePage.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: orderPage(),
    );
  }
}

class orderPage extends StatefulWidget {
  const orderPage({Key? key}) : super(key: key);

  @override
  _orderPageState createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Select Clothes",
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
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                categoryWidget("man", "men", true),
                categoryWidget("girl", "Women", false),
                categoryWidget("child", "Kids", false),
                categoryWidget("oldman", "others", false),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    clothWidget("cloth1", "Trouser", "15"),
                    clothWidget("cloth2", "Jeans", "10"),
                    clothWidget("cloth3", "Jackets", "5"),
                    clothWidget("cloth4", "Shirt", "10"),
                    clothWidget("cloth5", "T-Shirt", "12"),
                    clothWidget("cloth6", "Blazer", "15"),
                    clothWidget("cloth7", "Coats", "15"),
                    clothWidget("cloth8", "Kurta", "15"),
                    clothWidget("cloth9", "Sweater", "15"),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Your Basket",
                      style: headingStyle,
                    ),
                    Text(
                      "7 Items added",
                      style: contentStyle,
                    )
                  ],
                ),
                Text(
                  "\$200",
                  style: headingStyle,
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PickUpPage()));
              },
              child: Container(
                padding: EdgeInsets.all(14),
                height: 50,
                decoration: BoxDecoration(
                  gradient: gradientStyle,
                ),
                child: Center(
                  child: Text(
                    "SELECT DATE & TIME",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container clothWidget(String img, String name, String price) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/$img.png'))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: headingStyle,
                    ),
                    Text(
                      "\$$price",
                      style: headingStyle.copyWith(color: Colors.grey),
                    ),
                    Text(
                      "Add Note",
                      style: contentStyle.copyWith(color: Colors.orange),
                    )
                  ],
                ),
                Text(
                  "\$45",
                  style: headingStyle,
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          gradient: gradientStyle, shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "-",
                          style: headingStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      child: Text(
                        "  1",
                        style: headingStyle.copyWith(fontSize: 20),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          gradient: gradientStyle, shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "+",
                          style: headingStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.70,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }

  Column categoryWidget(String img, String name, bool isActive) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: (isActive) ? null : Colors.grey.withOpacity(0.3),
            gradient: (isActive) ? gradientStyle : null,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/$img.png"),
                      fit: BoxFit.contain)),
            ),
          ),
        ),
        Text(
          name,
          style: headingStyle,
        )
      ],
    );
  }
}
