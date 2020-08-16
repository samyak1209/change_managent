import 'package:flutter/material.dart';
import 'package:changemanagent/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}
enum FormType{
  login,
  register
}

class _loginPageState extends State<loginPage> {
  final formkey=new GlobalKey<FormState>();
  String email;
  String password;
  static bool User=false;
  FormType _formType=FormType.login;
  bool login(){
    final form=formkey.currentState;
    if(form.validate()){
    form.save();
    return true;}
    else{return false;}

  }
  void validateAndSubmit() async {
      if(login()){
        try {
          FirebaseUser user = (await FirebaseAuth.instance
              .signInWithEmailAndPassword(
              email: email, password: password)) as FirebaseUser;
          print('Signed In ${user.uid}');
          User=true;
        }
      catch(e){print(e);}}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Change Managment"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: new InputDecoration(labelText: 'Email'),
                validator: (value)=>value.isEmpty?('Email cant be empty'):(null),
                onSaved: (value)=>value=email,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 15,10,15),
              child: TextFormField(
                decoration: new InputDecoration(labelText: 'Password'),
                validator: (value)=>value.isEmpty?("Password can\t't be empty"):(null),
                obscureText: true,
                onSaved: (value)=>value=password,
              ),
            ),
            RaisedButton(
              child: Text('Sign In',textAlign: TextAlign.center,),
              onPressed: (){
                validateAndSubmit();
              },
              //padding: EdgeInsets.only(bottom: ),
            ),
            SizedBox(height: 5,),
            InkWell(
              child: Text("Don\t't have an account? Sign up"),
              onTap: (){
                setState(() {
                  _formType=FormType.register;
                });
                Navigator.pop(context);
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );},
            )
          ],
        ),
      ),
    );
  }
}
