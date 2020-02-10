import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFF1CF),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(55.0),
          child: Column(
            children: <Widget>[
              NavBar(),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "PROGRAMMER",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.5
                        )
                      ),
                      Text(
                        "FLAT DESIGN",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.5
                        )
                      ),
                      SizedBox(height: 50.0),
                      Text(
                        "Lorem ipsum dolor sit",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.5
                        )
                      ),
                      Text(
                        "amet, consectetur",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.5
                        )
                      ),
                      Text(
                        "adipiscing elit, sed do",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.5
                        )
                      ),
                      Text(
                        "eiusmod tempor incididunt",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.5
                        )
                      ),
                      SizedBox(height: 50.0),
                      Container(
                        width: 200.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0XFF3254E2),
                          borderRadius: BorderRadius.circular(50.0)
                        ),
                        child: Center(
                          child: Text(
                            "STARTED NOW",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                  Image.asset('assets/images/group_58.png', width: 800,),
                  Padding(padding: EdgeInsets.only(right: 30))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.insert_emoticon, size: 50.0, color: Colors.blueGrey,),
            Padding(padding: EdgeInsets.only(right: 16.0)),
            Text(
              "COMPANY LOGO",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w300,
                letterSpacing: 2.0
              )
            ),
          ],
        ),
        Row(
          children: <Widget>[
            // Icon(Icons.insert_emoticon, size: 50.0),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.0)),
            Text(
              "HOME",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2
              )
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.0)),
            Text(
              "ISSUES",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.2
              )
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.0)),
            Text(
              "SERVICES",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.2
              )
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.0)),
            Text(
              "CONTACT",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.2
              )
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.0)),
            Text(
              "Sign in",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.2
              )
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.0)),
            Container(
              width: 100.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Color(0XFF3254E2),
                borderRadius: BorderRadius.circular(50.0)
              ),
              child: Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    letterSpacing: 1.2
                  )
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}