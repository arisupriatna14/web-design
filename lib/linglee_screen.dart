import 'package:demo_flutter_web/home_screen.dart';
import 'package:flutter/material.dart';

class LingleeScreen extends StatelessWidget {
  const LingleeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SideBarLeft(),
              Padding(padding: EdgeInsets.only(right: 50)),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Dashboard",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text("20 Feb 2020, Friday", style: TextStyle(fontWeight: FontWeight.w300)),
                              Padding(padding: EdgeInsets.only(right: 16.0)),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0XFFE5E9FA),
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Center(
                                  child: Icon(Icons.search, color: Color(0XFF8EA1ED))
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Color(0XFFF8E5E9),
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 4.2,
                            height: 380,
                            decoration: BoxDecoration(
                              color: Color(0XFFF8E5E9),
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 4.2,
                            height: 380,
                            decoration: BoxDecoration(
                              color: Color(0XFFF8E5E9),
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Your courses",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text("More"),
                              Padding(padding: EdgeInsets.only(right: 16.0)),
                              RotatedBox(
                                quarterTurns: 90,
                                child: Icon(Icons.keyboard_backspace)
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ListMyCourse(color: Color(0XFF4D4CAC)),
                          ListMyCourse(color: Color(0XFF9698D5)),
                          ListMyCourse(color: Color(0XFFFF808B))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SideBarRight()
            ],
          ),
        )
      ),
    );
  }
}

class ListMyCourse extends StatelessWidget {
  final Color color;
  const ListMyCourse({
    Key key,
    @required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 6.2,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}

class SideBarRight extends StatelessWidget {
  const SideBarRight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      width: MediaQuery.of(context).size.width / 4.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 4.0,
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Icon(Icons.exit_to_app, size: 25,)
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            width: MediaQuery.of(context).size.width / 4.0,
            child: Column(
              children: <Widget>[
                Icon(Icons.account_circle, size: 150, color: Colors.blueGrey.shade200),
                Text(
                  "Anna Morisson",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Student",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 50.0),
          ListCourseProgress(),
          SizedBox(height: 32.0),
          ListCourseProgress(),
          SizedBox(height: 50),
          Container(
            width: MediaQuery.of(context).size.width / 4.0,
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Remainders",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Icon(Icons.notifications, size: 20,)
              ],
            ),
          ),
          SizedBox(height: 20),
          ListRemainder(),
          SizedBox(height: 20),
          ListRemainder(),
          SizedBox(height: 20),
          ListRemainder(),
          SizedBox(height: 20),
          ListRemainder(),
          SizedBox(height: 20),
          ListRemainder()
        ],
      ),
    );
  }
}

class ListCourseProgress extends StatelessWidget {
  const ListCourseProgress({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0XFFF6F5F8),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child: Text(
                "B2",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  color: Color(0XFF39374F)
                ),
              )
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "English",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  // color: Colors.white
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
              Text(
                "High intermediate",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.5,
                  // color: Colors.white
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 14.0)),
          Container(
            width: 100,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(50)
            ),
          )
        ],
      ),
    );
  }
}

class ListRemainder extends StatelessWidget {
  const ListRemainder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0XFFFFF1F4),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Center(
              child: Icon(Icons.error_outline, color: Colors.pink.shade100,)
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Eng - Vocabulary test",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  // color: Colors.white
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
              Text(
                "24 Jan 2020, Friday",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.5,
                  // color: Colors.white
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SideBarLeft extends StatelessWidget {
  const SideBarLeft({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0XFF5D81F5),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Center(
                child: Text(
                  "L",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                    color: Colors.white
                  ),
                )
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 16.0)),
            Text(
              "Linglee",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5
              ),
            )
          ],
        ),
        SizedBox(height: 100),
        GestureDetector(
          child: Row(
            children: <Widget>[
              Icon(Icons.dashboard, size: 30, color: Color(0XFF8194D2)),
              Padding(padding: EdgeInsets.only(right: 16.0)),
              Text("Dashboard", style: TextStyle(color: Colors.blueGrey.shade800, fontWeight: FontWeight.w600))
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return HomeScreen();
                }
              )
            );
          },
        ),
        SizedBox(height: 40),
        Row(
          children: <Widget>[
            Icon(Icons.folder, size: 30, color: Color(0XFFC2C3CE)),
            Padding(padding: EdgeInsets.only(right: 16.0)),
            Text("Resources", style: TextStyle(color: Colors.blueGrey.shade800, fontWeight: FontWeight.w300))
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: <Widget>[
            Icon(Icons.calendar_today, size: 30, color: Color(0XFFC2C3CE)),
            Padding(padding: EdgeInsets.only(right: 16.0)),
            Text("Learning plan", style: TextStyle(color: Colors.blueGrey.shade800, fontWeight: FontWeight.w300))
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: <Widget>[
            Icon(Icons.chat_bubble_outline, size: 30, color: Color(0XFFC2C3CE)),
            Padding(padding: EdgeInsets.only(right: 16.0)),
            Text("Chat", style: TextStyle(color: Colors.blueGrey.shade800, fontWeight: FontWeight.w300))
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: <Widget>[
            Icon(Icons.settings_applications, size: 30, color: Color(0XFFC2C3CE)),
            Padding(padding: EdgeInsets.only(right: 16.0)),
            Text("Settings", style: TextStyle(color: Colors.blueGrey.shade800, fontWeight: FontWeight.w300))
          ],
        )
      ],
    );
  }
}