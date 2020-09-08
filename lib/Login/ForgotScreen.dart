import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  String email = "";
  final formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot password?'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text(
                  "We will mail u a link....Please click on that link to reset your password",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                  validator: (value) =>
                  value.isEmpty ? 'Email can\'t be empty' : null,
                  onChanged: (value) => email = value,
                ),
                new RaisedButton(
                  color: Colors.blue,
                  child: new Text(
                    'Change password',
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      FirebaseAuth.instance
                          .sendPasswordResetEmail(email: email)
                          .then((value) => print("Check your mail"));
                    }
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Exit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
