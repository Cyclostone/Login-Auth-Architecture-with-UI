import 'package:edu_tech_fe2/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    //return either home or Authenticate widget
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Signed In Prototype"),
        backgroundColor: Colors.blueAccent,
        elevation: 3.0,
        actions: [
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              }, icon: Icon(Icons.person), label: Text("Logout"))
        ],
      ),
    );
  }
}
