import 'package:flutter/material.dart';
import 'package:loginscreen/SignUp.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Home(),
      '/signup': (context) => SignUp()} ,
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        floatingActionButton: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            RaisedButton(
              color: Colors.teal,
              onPressed: () {
                Navigator.pushNamed(context, '/signup');},
              child: Text(
                  'SignUp',
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 18.0,
                ),
               ),
            ),
            SizedBox(width: 50.0,),
            RaisedButton(
              color: Colors.teal,
              onPressed: () {
                Navigator.pushNamed(context, '/signup');},
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),

        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
          child: Column(
            children: <Widget>[
              Text(
                'Login Page',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(height: 30.0,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'this1@something.com',
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 10.0 ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}
