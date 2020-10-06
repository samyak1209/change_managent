
import 'dart:convert';
//import 'dart:html';
import 'package:changemanagent/components/Video.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:changemanagent/Login/auth.dart';
import 'mainLanding.dart';
import 'package:changemanagent/components/AboutUs.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:changemanagent/services/services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
/*
class PocPage extends StatefulWidget {
  @override
  _PocPageState createState() => _PocPageState();
}

class _PocPageState extends State<PocPage> {
  final AuthService _auth = AuthService();
  Future<PocData> Data;

  @override
 */
/* void initState() {
    super.initState();
    Data=fetchData();
  }*//*


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Poc Data',),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: Image.asset('images/logout.webp',height: 30,
                width: 30,color: Colors.white,),
              color: Colors.white,
              onPressed: () {
                _auth.signOut();
              }),
        ],

      ),
      drawer: new Drawer(
          child: new ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                    accountName: Text('Welcome to POC Dashboard'),
                ),
                InkWell(
                    child: Column(children: <Widget>[
                      ListTile(
                        title: Text('About Us'),
                        leading: Icon(Icons.info),
                      ),
                      Divider(thickness: 1.0)
                    ]),
                  onTap: (){
                      Navigator.of(context).push(new MaterialPageRoute(builder:(context) => new AboutUs()));
                  },
                ),
                InkWell(
                  child: Column(children: <Widget>[
                    ListTile(
                      title: Text('Feedback Form'),
                      leading: Icon(Icons.feedback),
                    ),
                    Divider(thickness: 1.0)
                  ]),
                  onTap: (){
                      _launchURL('https://www.tcs.com/');
                  },
                ),
                InkWell(
                  child: Column(children: <Widget>[
                    ListTile(
                      title: Text('Video'),
                      leading: Icon(Icons.video_library),
                    ),
                    Divider(thickness: 1.0)
                  ]),
                  onTap: (){
                    Navigator.of(context).push(new MaterialPageRoute(builder:(context) => new VideoPage()));
                  },
                ),
              ],
          ),
      ),
      body: ListView(children: <Widget>[
        Container(
          child: FutureBuilder(
            future: getcategory(),
            builder: (context,snapshot){
              if (snapshot.hasData) {
                List<PocData> d=snapshot.data;
                print(d.length);
                return Container(
                  padding: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height*0.9,
                  child: ListView.builder(
                    itemCount: d.length,
                    scrollDirection: Axis.vertical,
                      itemBuilder: (context, int index){
                        return Card(
                          child: Container(height: MediaQuery.of(context).size.height*0.25,padding: EdgeInsets.all(30),
                          child: Column(children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('Business Unit - ${d.elementAt(index).Business}',style: TextStyle(fontSize: 18),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: <Widget>[
                                Text('Employee ID - ${d.elementAt(index).ID}',style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: <Widget>[
                                Text('Name - ${d.elementAt(index).Name}',style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: <Widget>[
                                Text('Role - ${d.elementAt(index).Role}',style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: <Widget>[
                                Text('Location - ${d.elementAt(index).Location}',style: TextStyle(fontSize: 18)),
                              ],
                            ),
                          ],),),
                        );

                      }
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ],),
    );
  }
}
_launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
 getcategory(){
  return MyService().get(Resource(
      url: 'https://raw.githubusercontent.com/samyak1209/change_managent/master/new1.json',
      parse: PocData.parse
  ));
}

class PocData{

  final String Business;
  final int ID;
  final String Name;
  final String Role;
  final String Location;
  PocData({this.Business,this.ID,this.Name,this.Role,this.Location});

  factory PocData.fromJson(Map<String, dynamic> json){
    return PocData(
      Business: json["Business Unit"],
      ID: json["Employee ID"],
      Name: json["Name"],
      Role: json["Role"],
      Location: json["Location"]
    );
  }
  static parse(response) {
    final result = json.decode(response.body);
    Iterable list;
    try {
      list = result['result'];
    } catch (e) {
      print(e.toString());
      list = result;
    }
    return list.map((model) => PocData.fromJson(model)).toList();
  }
}
*/
/*class PocPage extends StatefulWidget {
  @override
  _PocPageState createState() => _PocPageState();
}

class _PocPageState extends State<PocPage> {
  final subtitle = ["Who is change agent?", "Change agent’s responsibilities"];
  final para = [
    "Lorem ipsum dolor sit amet, consectetur adipis cing elit, sed do eiusmod tempor incididunt ut labore et dgolore…","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Column(
            children: [
              Stack(children: <Widget>[

                Container(decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors:  [Colors.green, Colors.blue],
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    //stops: stops,
                  ),
                ),height: 150,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),),
                          Column(
                            children: [
                              SizedBox(height: 10,),
                              InkWell(
                                  child: Text("Back", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),),
                                  onTap:(){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => More_screen(),
                                      ),
                                    );
                                  }
                              ),
                            ],
                          ),
                          SizedBox(width:130 ,),
                          IconButton(icon: Icon(Icons.search,color: Colors.white,)),
                          IconButton(icon: Icon(Icons.add_alert,color: Colors.white,)),
                          IconButton(icon: Icon(Icons.account_circle,color: Colors.white,)),
                        ],
                      ),
                    ],
                  ),),
                Container(padding: EdgeInsets.fromLTRB(20,  80, 20, 20),child: Container(height: 220,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft:  const  Radius.circular(30.0),
                        topRight: const  Radius.circular(30.0),
                        bottomLeft: const Radius.circular(30.0),
                        bottomRight: const Radius.circular(30.0),
                      )),padding: EdgeInsets.only(left: 20,top: 20,bottom: 20)
                  ,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://github.com/samyak1209/change_managent/blob/master/Image%201.png?raw=true'),
                            radius: 37.0,
                          ),
                          SizedBox(width: 20.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10,),
                              Text('Hello,',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0,),
                              Text('John Smith',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black
                                ),),
                              SizedBox(height: 20,),
                              *//* *//*
                            ],
                          ),


                        ],),
                      SizedBox(height: 20,),
                      Container(
                        height:1.0,
                        width:320.0,
                        color:Colors.grey,),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text("Change Agent Name: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                          Text("Mitchell Nova"),

                        ],
                      ),
                      SizedBox(height: 5,),
                      Text("+91 12345 67890"),
                      SizedBox(height: 5,),
                      Text("michell.nova@mail.com"),

                    ],
                  ),
                ),
                )
              ],
              ),
              SizedBox(height: 10,),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 25,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Who is change agent?",style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),),
                SizedBox(height: 20,),
                Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),),
                SizedBox(height: 20,),
                Container(
                  height:1.0,
                  width:500.0,
                  color:Colors.grey,),
                SizedBox(height: 20,),
                Text("Change agent’s responsibilities",style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),),
                SizedBox(height: 20,),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.",style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),),

              ],
            ),
          )
        ],
      ),
    );
  }
}*/
