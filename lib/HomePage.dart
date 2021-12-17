import 'package:flutter/material.dart';
import 'package:ironsho_app/StyleScheme.dart';

import 'OrderPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
          "IRON YARD",
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
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1ffff),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("BLESS THIS MESS", style: headingStyle),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "We Pick your clothes and give \nthen a new look",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        margin: EdgeInsets.only(left: 50),
                        height: 80,
                        width: 140,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/bannerlmg.png"))),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'SERVICES',
                style: headingStyle,
              ),
              Container(
                height: 90,
                color: Color(0xfff1ffff),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/serviceslmg.png"))),
                    ),
                    Expanded(
                        child: Container(
                      height: 70,
                      padding: EdgeInsets.only(left: 10, bottom: 20, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text("IRON ONLY", style: headingStyle)),
                          SizedBox(height: 5),
                          InkWell(
                            onTap: openOrderPage,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: gradientStyle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 13),
                              child: Text("Place Order",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1ffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "AVAILABILITY",
                          style: contentStyle,
                        ),
                        Text(
                          " AVAILABLE",
                          style: contentStyle.copyWith(color: Colors.blue),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("We are open from 7.00 AM to 8.00 PM")
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1ffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CHECK THE ESTIMATION",
                      style: contentStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "You can check the estimation with the price",
                      style: contentStyle,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: gradientStyle, shape: BoxShape.circle),
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  )
                ],
              )
            ],
          ),
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

  void openOrderPage(){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
  }
}
