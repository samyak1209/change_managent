import 'dart:convert';
//import 'dart:html';
import 'package:changemanagent/components/Video.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:changemanagent/Login/auth.dart';
import 'package:changemanagent/components/AboutUs.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:changemanagent/services/services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';

class PocPage extends StatefulWidget {
  @override
  _PocPageState createState() => _PocPageState();
}

class _PocPageState extends State<PocPage> {
  final AuthService _auth = AuthService();
  Future<PocData> Data;

  @override
 /* void initState() {
    super.initState();
    Data=fetchData();
  }*/

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
