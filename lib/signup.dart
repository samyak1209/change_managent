import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 // String email;
  TextEditingController email1=new TextEditingController();
  TextEditingController password=new TextEditingController();
  String name;
  int id;
  String location;
 // String password;
  void Register() async {
    try{
      FirebaseUser user= (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email1.text, password: password.text)) as FirebaseUser;
      print('Registered ${user.uid}');
    }catch(e){print(e);}}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Register'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            /*Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width*0.9,
              child: TextFormField(
                decoration: new InputDecoration(labelText: 'Enter Name'),
                validator: (value)=>value.isEmpty?('Name cant be empty'):(null),
                onSaved: (value)=>value=name,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width*0.9,
              child: TextFormField(
                decoration: new InputDecoration(labelText: 'Enter Employee ID'),
                validator: (value)=>value.isEmpty?('Employee ID cant be empty'):(null),
                onSaved: (value)=>value=id.toString(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width*0.9,
              child: TextFormField(
                decoration: new InputDecoration(labelText: 'Enter Location'),
                validator: (value)=>value.isEmpty?('Location cant be empty'):(null),
                onSaved: (value)=>value=location,
              ),
            ),*/
            Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width*0.9,
              child: TextFormField(
                controller: email1,
                decoration: new InputDecoration(labelText: 'Enter Email'),
                validator: (value)=>value.isEmpty?('Email cant be empty'):(null),
                onSaved: (value)=>email1.text=value,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width*0.9,
              child: TextFormField(
                controller: password,
                decoration: new InputDecoration(labelText: 'Enter Password'),
                validator: (value)=>value.isEmpty?('Password cant be empty'):(null),
                onSaved: (value)=>password.text=value,
              ),
            ),
          SizedBox(height: 10,),
          RaisedButton(
            child: Text('Sign Up'),
            onPressed: (){
              Register();
              print(email1.text);
              print(password.text);
            },
          )],
        ),
      ),
    );
  }
}
