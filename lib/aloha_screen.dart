import 'package:flutter/material.dart';

class AlohaScreen extends StatelessWidget {
  const AlohaScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NavBar(),
              Padding(padding: EdgeInsets.symmetric(vertical: 30.0)),
              CustomJumbotron(),
              Padding(padding: EdgeInsets.symmetric(vertical: 30.0)),
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 32.0,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 24.0)),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CardCategories(
                      title: 'Farming',
                      image: 'assets/images/pablo-eco-technologies.png',
                      color: Colors.white,
                    ),
                    CardCategories(
                      title: 'Plants',
                      image: 'assets/images/pablo-done.png',
                      color: Colors.white,
                    ),
                    CardCategories(
                      title: 'Pets',
                      image: 'assets/images/pablo-growing-up.png',
                      color: Color(0XFFF3C7BD),
                    ),
                    CardCategories(
                      title: 'Birds',
                      image: 'assets/images/pablo-waiting.png',
                      color: Color(0XFFF9D8EA),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardCategories extends StatelessWidget {
  final String image;
  final Color color;
  final String title;

  const CardCategories({
    Key key,
    @required this.image,
    @required this.color,
    @required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 400,
      decoration: BoxDecoration(
        // color: Color(0XFFFCF0E4),
        color: color,
        borderRadius: BorderRadius.circular(25.0)
      ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(image, colorBlendMode: BlendMode.clear,)
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 16.0)),
          Text(
            title,
            style: TextStyle(
              fontSize: 28.0,
              letterSpacing: 0.5,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}

class CustomJumbotron extends StatelessWidget {
  const CustomJumbotron({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      height: 450.0,
      decoration: BoxDecoration(
        color: Color(0XFFF3C7BD),
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        margin: EdgeInsets.only(left: 100.0, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Nature",
                  style: TextStyle(
                    fontSize: 50.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Lover",
                  style: TextStyle(
                    fontSize: 50.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                  width: 290,
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Nature love is someone who thrives on spending time in the outdoors and observing wild animals and plants.",
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 0.5
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Explore more",
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
                    RotatedBox(
                      quarterTurns: 90,
                      child: Icon(Icons.keyboard_backspace)
                    )
                  ],
                )
              ],
            ),
            Image.asset('assets/images/pablo-animal-care.png', width: 850,)
          ],
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
        Text(
          "ALOHA",
          style: TextStyle(
            fontSize: 32.0,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              "Home",
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 32.0)),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w300
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 32.0)),
            Text(
              "About",
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w300
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 32.0)),
            Text(
              "Contact",
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w300
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 32.0)),
            Text(
              "Faqs",
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w300
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 32.0)),
            Icon(Icons.search, size: 25.0),
            Padding(padding: EdgeInsets.only(right: 32.0)),
            Container(
              width: 80.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50.0)
              ),
              child: Icon(Icons.menu, size: 25.0, color: Colors.white,)
            )
          ],
        )
      ],
    );
  }
}