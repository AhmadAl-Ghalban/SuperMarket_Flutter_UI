import 'package:flutter/material.dart';
import 'package:ghaith/homepage.dart';
import 'logn.dart';
import 'suggest.dart';
import 'setting.dart';
import 'package:ghaith/page/drawer.dart';

class Section extends StatefulWidget {
  @override
  _SectionState createState() => _SectionState();
}

class _SectionState extends State<Section> {
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
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Section",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.teal[800],
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Image.asset("images/fr.png"),
                  title: Text(
                    'Freezers',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal[900],
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.teal,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Image.asset("images/ca.jpg"),
                  title: Text(
                    'Candy',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal[900],
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.teal,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Image.asset("images/ddd.png"),
                  title: Text(
                    'Detergent',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal[900],
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.teal,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Image.asset("images/dr.jpg"),
                  title: Text(
                    'Drinks',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal[900],
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.teal,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Image.asset("images/bb.jpg"),
                  title: Text(
                    'Suplying',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal[900],
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.teal,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Image.asset("images/vv.jpg"),
                  title: Text(
                    'Fruits and Vegetables',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal[900],
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.teal,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Image.asset("images/ep.jpg"),
                  title: Text(
                    'Epic',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal[900],
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.teal,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Image.asset("images/ba.jpg"),
                  title: Text(
                    'Dairies',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal[900],
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.teal,),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
