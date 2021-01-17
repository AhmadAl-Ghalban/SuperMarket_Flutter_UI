
import 'package:carousel_pro/carousel_pro.dart';
import 'page/setting.dart';
import 'package:flutter/material.dart';
import 'file:///E:/flutter_project/ghaith/lib/page/logn.dart';
import 'file:///E:/flutter_project/ghaith/lib/page/suggest.dart';
import 'page/section.dart';
import 'package:ghaith/page/drawer.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget pageone = Container(
    height: 150.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        Image.asset("images/tow.jpg"),
        Image.asset("images/three.jpg"),
        Image.asset("images/four.jpg"),
        Image.asset("images/five.jpg"),
      ],
      autoplay: true,
      animationCurve: Curves.decelerate,
      //  animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      //  dotBgColor: Colors.blueGrey,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Supermarket '),
          backgroundColor: Colors.teal[200],
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
        drawer:  MyDrawer(),
        body: ListView(children: <Widget>[
          pageone,
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 10),
            child: Text(
              "Section",
              style: TextStyle(
                  color: Colors.teal[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
          //Start list Section
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 170.0,
                            height: 200.0,
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset("images/Freezers.jpg"),
                            ),
                          ),
                        ),
                        Text(
                          "Freezers",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal[800],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 170.0,
                          height: 215.0,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset("images/Candy.jpg"),
                          ),
                        ),
                        Text(
                          "Candy",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal[800],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 170.0,
                            height: 200.0,
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset("images/Detergent.jpg"),
                            ),
                          ),
                        ),
                        Text(
                          "Detergent",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal[800],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 170.0,
                          height: 215.0,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset("images/drinks.jpg"),
                          ),
                        ),
                        Text(
                          "Drinks",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal[800],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 145.0,
                            height: 200.0,
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset("images/suplying.jpg"),
                            ),
                          ),
                        ),
                        Text(
                          "Suplying",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal[800],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 145.0,
                          height: 215.0,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset("images/Vegetables.jpg"),
                          ),
                        ),
                        Text(
                          "Fruits and Vegetables",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal[800],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 170.0,
                            height: 200.0,
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset("images/Epic.jpg"),
                            ),
                          ),
                        ),
                        Text(
                          "Epic",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal[800],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 170.0,
                          height: 215.0,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset("images/deli.jpg"),
                          ),
                        ),
                        Text(
                          "Dairies",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal[800],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
