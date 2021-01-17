import 'dart:io';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ghaith/page/setting.dart';
import 'package:flutter/material.dart';
import 'file:///E:/flutter_project/ghaith/lib/page/logn.dart';
import 'file:///E:/flutter_project/ghaith/lib/page/suggest.dart';
import 'package:ghaith/page/section.dart';
import 'package:ghaith/homepage.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Ahmad Alglban'),
              accountEmail: Text('ahmadalhgalban05@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: Icon(
                    Icons.person,
                    color: Colors.black54,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.teal[200]),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: ListTile(
                title: Text('Home',style: TextStyle(fontSize: 18),),
                leading: Icon(
                  Icons.home,
                  color: Colors.teal[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Section()));},
              child: ListTile(
                title: Text(
                  'Sections',
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(
                  Icons.apps,
                  color: Colors.teal[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Offers',
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(
                  Icons.local_offer,
                  color: Colors.teal[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Class',
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(
                  Icons.class_,
                  color: Colors.teal[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Favorite',
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.teal[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Cart',
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.teal[600],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Branches',
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(
                  Icons.location_on,
                  color: Colors.teal[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'About',
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.teal[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Suggest()));},
              child: ListTile(
                title: Text(
                  'Complaints and suggestions',
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(
                  Icons.comment,
                  color: Colors.teal[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
              child: ListTile(
                title: Text(
                  'sign in',
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(
                  Icons.account_box,
                  color: Colors.teal[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>setting ()));},
              child: ListTile(
                title: Text(
                  'Setting',
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.teal[600],
                ),
              ),
            ),
          ],
        ));
  }
}
