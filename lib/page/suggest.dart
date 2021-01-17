import 'package:flutter/material.dart';
import 'logn.dart';
import 'package:ghaith/homepage.dart';
import 'section.dart';
import 'setting.dart';
import 'package:ghaith/page/drawer.dart';
class Suggest extends StatefulWidget {
  @override
  _SuggestState createState() => _SuggestState();
}

class _SuggestState extends State<Suggest> {
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
      drawer:      MyDrawer(),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.network("https://www.selfhelpservices.org.uk/wp-content/uploads/2016/04/Feedback-Website.png"),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 30.0),
                child: Text("Do you have a suggestion or complaints write here",style: TextStyle(fontSize: 24.0,color: Colors.teal[600]),),
              ),
              Padding(
                padding: const  EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      labelText: "Name",
                      icon: Icon(Icons.person,color: Colors.teal,),
                      hintText: 'Write Name'


                  ),





                ),
              ),
              Padding(
                padding: const  EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      labelText: "Phone Number ",
                      icon: Icon(Icons.person,color: Colors.teal,),
                      hintText: 'Write Number'


                  ),

keyboardType: TextInputType.phone,



                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      labelText: "Do you have a suggestion or complaints write here ",
                      icon: Icon(Icons.assignment,color: Colors.teal,),
                      hintText: 'Write Here'




                  ),




                ),
              ),

              RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>em()));},
                child: Text('Send',style: TextStyle(color: Colors.white,fontSize: 22.0),),
                color: Colors.teal,



              )










            ],











          )




        ],





      ),














    );
  }
}

class em extends StatefulWidget {
  @override
  _emState createState() => _emState();
}

class _emState extends State<em> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
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
      body: Column(

        children: <Widget>[
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRTDDWQEsjOt7v0sapennKp7DK0ixCbPA7UUA&usqp=CAU"),

          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 30),
            child: Text("Thank you for send suggestion or complaints",style: TextStyle(color: Colors.teal,fontSize: 30.0),),
          ),

          RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
            child: Text("Back To Home Page ",style:TextStyle(color: Colors.white,fontSize: 22.0),),
            color: Colors.teal,


          )

        ],





      ),
















    );
  }
}
