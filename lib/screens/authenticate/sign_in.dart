import 'package:edu_tech_fe2/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 5.0,
        title: Text("Sign In"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign In with Anon'),
          onPressed: () async {
            dynamic result = await _auth.signInhAnon();
            if (result == null){
              print('error signing in');
            } else {
              print('Signed In');
              print(result);
            }
          },
        ),
      ),
    );
  }
}
