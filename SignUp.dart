import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: SignUp(),
));

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        floatingActionButton: RaisedButton (
          onPressed: (){
            Navigator.pushNamed(context, '/');
          },
          color: Colors.teal,
          child: Text(
              'Signup',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[200],
            ),
          ),

        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.png'),
                  radius: 40.0,
                ),
                Divider(

                  height: 15.0,),
                Text(
                    'Sign Up Here',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 25.0,
                ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Please enter your email',
                    labelText: 'Username',
                    focusColor: Colors.teal[600],
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Your password must be aleast 8 characters',
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Ensure your input matches the first field',
                    labelText: 'Confirm your Password',
                  ),
                ),
                SizedBox(height: 10.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
