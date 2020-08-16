import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:changemanagent/loginPage.dart';
import 'package:changemanagent/signup.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text('Change Managment'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 80),
              child: Text('Hi and Welcome\n to the OCM\n Mobile App',style: TextStyle(fontSize: size*0.1,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            ),SizedBox(
            height: size*0.25,
          ),
          SizedBox(
            height: size*0.125,
            width: size*0.4,
            child: RaisedButton(color: Colors.white,
              child: Text('Sign In',style: TextStyle(fontSize: size*0.055,color: Colors.redAccent),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage()));
              },
            ),
          ),
          SizedBox(height: size*0.2,),
          Text('New to App',style: TextStyle(fontSize: size*0.04),),
          SizedBox(height: size*0.035,),
          SizedBox(
            height: size*0.125,
            width: size*0.4,
            child: RaisedButton(color: Colors.white,
              child: Text('Sign Up',style: TextStyle(fontSize: size*0.055,color: Colors.redAccent),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
              },
            ),
          ),
        ],),
      ),
    );
  }
}
