import 'dart:convert';
import 'package:changemanagent/components/Video.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:changemanagent/Login/auth.dart';
import 'package:changemanagent/components/AboutUs.dart';
import 'package:url_launcher/url_launcher.dart';
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
  void initState() {
    super.initState();
    Data=fetchData();
  }

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
          child: FutureBuilder<PocData>(
            future: Data,
            builder: (context,snapshot){
              if (snapshot.hasData) {
                return Text("HI");
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
/*const jsoncodec=const JsonCodec();
_loadData() async {
  var url="https://change-managment-24439.firebaseio.com/";
  var httpClient = createHttpClient();
}*/
Future<PocData> fetchData() async  {
  final response= await  http.get('https://change-managment-24439.firebaseio.com/');
  if (response.statusCode == 200) {
    return PocData.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load Data');
  }
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
}
