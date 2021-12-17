import 'package:flutter/material.dart';
import 'package:ironsho_app/StyleScheme.dart';

import 'TrackOrderPage.dart';

class OrderConfirmPage extends StatelessWidget {
  const OrderConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: orderConfirmPage(),
    );
  }
}

class orderConfirmPage extends StatefulWidget {
  @override
  _orderConfirmPageState createState() => _orderConfirmPageState();
}

class _orderConfirmPageState extends State<orderConfirmPage> {
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
          "Order Confirmed",
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
        padding: EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/onBoard2.png"))),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Thank You for choosing us!",
              style: headingStyle,
            ),
            Text(
              "Your order has been placed and we will pick up your clothes on time",
              style: contentStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order ID",
                  style: headingStyle,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    gradient: gradientStyle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text("1001", style: headingStyle.copyWith(
                    color: Colors.white
                  ),),
                )
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(" Clothes Count", style: headingStyle,),
                Text("7", style: headingStyle),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(" Final Amount", style: headingStyle,),
                Text("225", style: headingStyle),
              ],
            ),
            divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

           children: [
             Text("Pick up Date & Time", style: headingStyle,),
             Text("Wednesday, 07 Aug, 2021. Between 10:00 Am & 12:00 PM",
               style: contentStyle.copyWith(
                 fontSize: 12,
                 color: Colors.grey,
               ),

             )
           ], ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(" Payment Method", style: headingStyle,),
                Text("Cash", style: headingStyle),
              ],
            ),
            Expanded(child: Container(),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TrackOrderPage()));
              },
              child: Container(
                padding: EdgeInsets.all(14),
                height: 50,
                decoration: BoxDecoration(
                  gradient: gradientStyle,
                ),
                child: Center(
                  child: Text(
                    "TRACK ORDER",
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
  Container divider()
  {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 1,
      color: Colors.grey,
    );
  }


}
