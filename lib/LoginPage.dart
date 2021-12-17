import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ironsho_app/StyleScheme.dart';
import 'package:ironsho_app/signuppage.dart';

import 'HomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"))),
            ),SizedBox(
              height: 30,
            ),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.orange,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Please Log In to your Account",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          labelText: "Email",
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password ?",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: openHomePage,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: gradientStyle,
                          ),
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "sfpro"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Container(
                            height: 1,
                            color: Colors.grey,
                          )),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Text("OR"),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            height: 1,
                            color: Colors.grey,
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.black, width: 0.5)),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/googleLogo.png"))),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.black, width: 0.5)),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/fbLogo.png"))),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Don't have an account?",style: TextStyle(
               fontSize: 16,
               fontFamily: "sfpro",
             ),),
             InkWell(
               onTap: openSignUpPage ,
               child: Text("SIGN UP",style: TextStyle(
                 color: Colors.orange,
                 fontSize: 16,
                 fontWeight: FontWeight.w700,
               ),),
             )
           ],
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
  void openSignUpPage(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>SignUpPage()));
  }
  void openHomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }
}
