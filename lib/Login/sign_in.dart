/*
import 'dart:ui';
import 'package:changemanagent/Login/loading.dart';
import 'package:changemanagent/Login/auth.dart';
import 'package:changemanagent/Login/references.dart';
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
            backgroundColor: Color.fromRGBO(242,242,242,1),
            */
/*appBar: AppBar(
              backgroundColor: Colors.blue,
              elevation: 0.0,
              title: Text('Sign In'),
            ),*//*

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
                          */
/*enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0)),*//*

                          */
/*focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.brown[500], width: 2.0),
                              borderRadius: BorderRadius.circular(3.0))*//*
),
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
                            */
/*enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 2.0)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.brown[500], width: 2.0),
                                borderRadius: BorderRadius.circular(3.0))*//*
),
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
                          else{
                            Navigator.pop(context);
                            Navigator.of(context).push(new MaterialPageRoute(builder: (context){return References();}));
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
*/
import 'dart:ui';
import 'package:changemanagent/Login/ForgotScreen.dart';
import 'package:changemanagent/Login/loading.dart';
import 'package:changemanagent/Login/references.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth.dart';

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
  bool _rememberFlag = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      /* appBar: AppBar(
              backgroundColor: Colors.brown[400],
              elevation: 0.0,
              title: Text('Sign In'),
            ),*/
      body: Container(
        // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        padding: EdgeInsets.all(16.0),
        child: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 120.0),
                  new Text(
                    "Log In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25.0),
                  ),
                  SizedBox(height: 30.0),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Email',
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white, width: 2.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue[500], width: 2.0),
                            borderRadius: BorderRadius.circular(3.0))),
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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue[500], width: 2.0),
                              borderRadius: BorderRadius.circular(3.0))),
                      validator: (val) => val.length < 6
                          ? 'Enter correct password 6+ char'
                          : null,
                      autocorrect: false,
                      cursorColor: Colors.red,
                      obscureText: true,
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  new Row(
                    children: <Widget>[
                      new GestureDetector(
                        child: new Row(
                          children: <Widget>[
                            new Checkbox(
                              value: _rememberFlag,
                              onChanged: (value) => setState(() {
                                _rememberFlag = !_rememberFlag;
                              }),
                            ),
                            new Text(
                              "Remember Me",
                              style: new TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        onTap: () => setState(() {
                          _rememberFlag = !_rememberFlag;
                        }),
                      )
                    ],
                  ),
                  RaisedButton(
                    color: Colors.blue[500],
                    child: Text(
                      'Sign In',
                      style:
                      TextStyle(color: Colors.white, fontSize: 20.0),
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
                        } else {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              new MaterialPageRoute(builder: (context) {
                                return References();
                              }));
                        }
                      }
                    },
                  ),
                  /* RaisedButton(
                          onPressed: () {
                            widget.toggleView();
                          },
                          color: Colors.blue[500],
                          child: Text(
                            'New User, Click Here',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),*/
                  SizedBox(height: 8.0),
                  Text(
                    error,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  new Center(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ForgotScreen()));
                        },
                        child: Text("Having trouble signing in?",
                            style: TextStyle(color: Colors.blue)),
                      )),
                  SizedBox(
                    height: 85.0,
                  ),
                  Container(
                    alignment:Alignment.bottomCenter
                    ,child:Column(
                    children: <Widget>[
                      new Center(
                        child: new Text(
                            "@ TCS AB 2013-2018- All Rights Reserved."),
                      ),
                      new Center(
                        child: new Text(
                          "No part of this software may be reproduced in any form",
                          style: new TextStyle(fontSize: 12),
                        ),
                      ),
                      new Center(
                        child: new Text(
                          "without the written permission of the copyright holder.",
                          style: new TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  ) ])),
      ),
      /*drawer: new Footer(
          child: Padding(
            padding: new EdgeInsets.all(10.0),
            child: Text("Footer"),
          )),*/
    );
  }
}
