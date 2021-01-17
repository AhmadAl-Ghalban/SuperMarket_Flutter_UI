import 'package:flutter/material.dart';

import 'package:ghaith/homepage.dart';
import 'package:ghaith/page/utile.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supermarket'),
        backgroundColor: Colors.teal[200],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 80.0),
                  child: Text(
                    "Supermarket ",
                    style: TextStyle(fontSize: 30.0, color: Colors.teal[200]),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'E-mail'),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 5.0, top: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text('Login',
                            style: new TextStyle(
                                fontSize: 20.0, color: Colors.white))),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: new Text("Forgot Password ?",
                          style: new TextStyle(
                              fontSize: 17.0, color: Colors.teal)),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => account()));
                      },
                      child: Text(
                        'Create A New Account',
                        style: TextStyle(fontSize: 17.0, color: Colors.teal),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supermarket '),
        backgroundColor: Colors.teal[200],
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 100.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => loginPage(),
                          ));
                    },
                    child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: Colors.teal,
                            borderRadius: new BorderRadius.circular(9.0)),
                        child: new Text("Sign In With Email",
                            style: new TextStyle(
                                fontSize: 20.0, color: Colors.white))),
                  ),
                ),
              )
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 5.0, top: 50.0),
                  child: InkWell(
                    onTap: () => Utils.openLink(url: 'https://www.facebook.com/login/'),
                    child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: Colors.blue,
                            borderRadius: new BorderRadius.circular(9.0)),
                        child:  Text("Facebook",style: TextStyle(fontSize: 18.0,color: Colors.white),),


                        )),
                  ),
                ),

              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 20.0, top: 50.0),
                  child: InkWell(
                      onTap: () => Utils.openLink(url: 'https://accounts.google.com/signin/v2/identifier?hl=ar&passive=true&continue=https%3A%2F%2Fwww.google.com%2F&ec=GAZAAQ&flowName=GlifWebSignIn&flowEntry=ServiceLogin'),
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: Colors.red,
                            borderRadius: new BorderRadius.circular(9.0)),
                        child:  Text("Google",style: TextStyle(fontSize: 18.0,color: Colors.white),),


                      )),
                ),
              )
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => account()));
                    },
                    child: Text(
                      'Create A New Account',
                      style: TextStyle(fontSize: 17.0, color: Colors.teal),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supermarket '),
        backgroundColor: Colors.teal[200],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                  labelText: 'First Name',
                  icon: Icon(Icons.person, color: Colors.teal)),
              keyboardType: TextInputType.name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                  labelText: 'Last Name',
                  icon: Icon(Icons.person, color: Colors.teal)),
              keyboardType: TextInputType.name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Passworad',
                  icon: Icon(Icons.edit, color: Colors.teal)),
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'password confirmation',
                  icon: Icon(
                    Icons.edit,
                    color: Colors.teal,
                  )),
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                  labelText: 'E-mail',
                  icon: Icon(
                    Icons.email,
                    color: Colors.teal,
                  )),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                  labelText: 'Phone ',
                  icon: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  )),
              keyboardType: TextInputType.phone,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                'Confirm',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              color: Colors.teal,
            ),
          )
        ],
      ),
    );
  }
}
