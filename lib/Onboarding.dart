import 'package:flutter/material.dart';

import 'LoginPage.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding(),
    );
  }
}

class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/images/bg.png'))),
          ),
          Column(
            children: [
              Container(
                height: 500,
                child: PageView(
                  controller: _pageController,
                  children: [
                    onBoardPage("onBoard1", "Choose Clothes"),
                    onBoardPage("onBoard2", " Schedule Pickup   "),
                    onBoardPage("onBoard3", "Get Best Iron Service"),
                    onBoardPage("onBoard2", " Get on time Delivery "),
                    onBoardPage("onBoard4", "Pay Latter"),
                  ],
                  onPageChanged: (value) => {setCurrentPage(value)},
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) => getIndicator(index)))
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: changePage ,
              child: Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xfff3953b), Color(0xffe57509)],
                      stops: [0, 1],
                    )),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void changePage() {
    if (currentPage == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      _pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      height: 10,
      width: (currentPage == pageNo) ? 20 : 10,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: (currentPage == pageNo) ? Colors.orange : Colors.grey),
    );
  }

  Column onBoardPage(String img, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/$img.png"))),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontFamily: "roboto",
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
          ),
        ),
      ],
    );
  }
}
