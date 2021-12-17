import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ironsho_app/StyleScheme.dart';

import 'OrderConfirmPage.dart';

class PickUpPage extends StatelessWidget {
  const PickUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pickUpTimePage(),
    );
  }
}

class pickUpTimePage extends StatefulWidget {
  @override
  _pickUpTimePageState createState() => _pickUpTimePageState();
}

class _pickUpTimePageState extends State<pickUpTimePage> {
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
          "Select Date & Time",
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
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pick Up Date",
              style: headingStyle,
            ),
            SizedBox(
              height: 6,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget("Wed", "07 Aug", true),
                  dateWidget("Thu", "08 Aug", false),
                  dateWidget("Fri", "09 Aug", false),
                  dateWidget("Sat", "13 Aug", false),
                  dateWidget("Mon", "18 Aug", false),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Pick Up Time",
              style: headingStyle,
            ),
            SizedBox(
              height: 6,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("12:00 PM to 02:00 PM", true),
                  timeWidget("02:00 PM to 04:00 PM", false),
                  timeWidget("04:00 PM to 06:00 PM", false),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Deliver Date",
              style: headingStyle,
            ),
            SizedBox(
              height: 6,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget("Wed", "09 Aug", true),
                  dateWidget("Thu", "10 Aug", false),
                  dateWidget("Fri", "11 Aug", false),
                  dateWidget("Sat", "15 Aug", false),
                  dateWidget("Mon", "20 Aug", false),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Delivery Time",
              style: headingStyle,
            ),
            SizedBox(
              height: 6,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("12:00 PM to 02:00 PM", true),
                  timeWidget("02:00 PM to 04:00 PM", false),
                  timeWidget("04:00 PM to 06:00 PM", false),
                ],
              ),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Amount Payable",
                  style: headingStyle,
                ),
                Text(
                  '\$225',
                  style: headingStyle,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderConfirmPage()));
              },
              child: Container(
                padding: EdgeInsets.all(14),
                height: 50,
                decoration: BoxDecoration(
                  gradient: gradientStyle,
                ),
                child: Center(
                  child: Text(
                    "Place Order",
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

  Container timeWidget(String time, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: (isActive) ? Colors.orange : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: contentStyle.copyWith(
                color: (isActive) ? Colors.white : Colors.black, fontSize: 18),
          ),
        ],
      ),
    );
  }

  Container dateWidget(String day, String date, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: (isActive) ? Colors.orange : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: contentStyle.copyWith(
                color: (isActive) ? Colors.white : Colors.black, fontSize: 18),
          ),
          Text(
            date,
            style: contentStyle.copyWith(
              color: (isActive) ? Colors.white : Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
