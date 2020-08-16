import 'dart:ui';
import 'package:changemanagent/Login/loading.dart';
import 'package:changemanagent/Login/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  String error = "";
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.blue,
              elevation: 0.0,
              title: Text('Sign In'),
            ),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 8.0 ),
              child: Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter Email',
                          fillColor: Colors.white,
                          filled: true,
                          /*enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0)),*/
                          /*focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.brown[500], width: 2.0),
                              borderRadius: BorderRadius.circular(3.0))*/),
                      validator: (val) =>
                          val.isEmpty ? 'Enter Email Please' : null,
                      autocorrect: true,
                      cursorColor: Colors.amber,
                      onChanged: (value) {
                        setState(() => email = value);
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                            fillColor: Colors.white,
                            filled: true,
                            /*enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 2.0)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.brown[500], width: 2.0),
                                borderRadius: BorderRadius.circular(3.0))*/),
                        validator: (val) => val.length < 6
                            ? 'Enter correct password 6+ char'
                            : null,
                        autocorrect: false,
                        cursorColor: Colors.amber,
                        obscureText: true,
                        onChanged: (val) {
                          setState(() {
                            password = val;
                          });
                        }),
                    SizedBox(
                      height: 20.0,
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          setState(() {
                            loading = true;
                          });
                          dynamic result = await _authService
                              .signInWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(() {
                              loading = false;
                              error =
                                  'No user exits with such email and Password';
                            });
                          }
                        }
                      },
                    ),
                    RaisedButton(
                      onPressed: () {
                        widget.toggleView();
                      },
                      color: Colors.blue,
                      child: Text(
                        'New User, Click Here',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      error,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14.0,
                      ),
                    ),
                  ])),
            ),
          );
  }
}
