import 'package:flutter/material.dart';
import 'signup.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(25.0, 150, 0, 0),
                child: Text(
                  'Hello ',
                  style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w300,
                      color: Colors.blue[400]),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(90.0, 200, 0, 0),
                child: Text(
                  'There',
                  style: TextStyle(
                      fontSize: 75,
                      fontWeight: FontWeight.w200,
                      color: Colors.blue[400]),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(260.0, 105, 0, 0),
                child: Text(
                  '.',
                  style: TextStyle(
                      fontSize: 180,
                      fontWeight: FontWeight.w200,
                      color: Colors.green[800]),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 10.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Column(children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'E MAIL',
              ),
            )
          ]),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 45.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Column(children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: 'PASSWORD',
                  counterStyle: TextStyle(
                    fontSize: 10,
                  )),
            )
          ]),
        ),
        SizedBox(
          height: 1.0,
        ),
        Container(
            padding: EdgeInsets.only(
              top: 25.0,
              left: 240.0,
              //  right: 20.0,
            ),
            child: InkWell(
              child: Text(
                'Forgot password ?',
                style: TextStyle(
                    color: Colors.green[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    fontFamily: 'hint',
                    decoration: TextDecoration.underline),
              ),
            )),
        Container(
          padding: EdgeInsets.only(
            top: 15.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Column(children: <Widget>[
            FlatButton(
              child: Text(
                'LOGIN',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              padding: EdgeInsets.fromLTRB(40, 10, 35, 10),
              disabledColor: Colors.blue[400],
              //  onPressed: () {},
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 15.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Column(children: <Widget>[
            FlatButton(
              child: Text(
                'Sign Up',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
              padding: EdgeInsets.fromLTRB(40, 2, 35, 10),
              disabledColor: Colors.white,
              onPressed: null,
            ),
          ]),
        )
      ]),
    );
  }
}
