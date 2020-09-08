
import 'package:changemanagent/POC.dart';
import 'package:changemanagent/main.dart';
import 'package:changemanagent/mainLanding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class References extends StatefulWidget {
  @override
  _ReferencesState createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  List imgList = new List();
  int _current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < 3; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    double size1=MediaQuery.of(context).size.height;
    imgList.add(Container1());
    imgList.add(Container2());
    imgList.add(Container3());
    return Scaffold(
        body: Stack(
          children: <Widget>[
            CarouselSlider(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              initialPage: 0,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((egg){
                return Builder(
                    builder: (BuildContext context){
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        //margin: EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: egg,
                      );
                    }
                );
              }).toList(),
            ),
            Container(alignment: Alignment.bottomCenter,padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  //padding: EdgeInsets.only(bottom: 80),
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.black : Colors.white,
                  ),
                );
              }),
            ),)
          ],
        ),

    );
  }
   Container1(){
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: MediaQuery.of(context).size.height,
      child: Stack(children: <Widget>[
        /*Container(height: MediaQuery.of(context).size.height*0.7,
        child: Image.network("https://raw.githubusercontent.com/samyak1209/change_managent/master/images/officeEnv.jpg"),),
        Container(color: Colors.orange,)*/
        Align(alignment: Alignment.topCenter,
        child: Container(height: MediaQuery.of(context).size.height*0.5,
          child: Image.network("https://raw.githubusercontent.com/samyak1209/change_managent/master/images/officeEnv.jpg"),
        )
        ),
        Align(alignment: Alignment.bottomCenter,
        child: Container(height: MediaQuery.of(context).size.height*0.55,
          decoration: new BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(99,194,157, 1),
                  Color.fromRGBO(61,133,198, 1),
                ]),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0) //                 <--- border radius here
          ),
        ),
        ),),
        Align(alignment: Alignment.bottomCenter,child: Container(height: MediaQuery.of(context).size.height*0.5,
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: //Text('Management',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          Column(children: <Widget>[
            Text('Management',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
            Container(padding: EdgeInsets.only(top: 30),),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',style: TextStyle(color: Colors.white,fontSize: 18),),
          ],)
        ),),
        Align(alignment: Alignment.bottomRight,child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 50, 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Skip'),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: (){
                 Navigator.pop(context);
                 Navigator.of(context).push(new MaterialPageRoute(builder: (context){return MyApp1();}));
                  //Container2();

                },
              ),
            ],
          ),
        ),)
      ],),
    );
  }
  Container2(){
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: MediaQuery.of(context).size.height,
      child: Stack(children: <Widget>[
        /*Container(height: MediaQuery.of(context).size.height*0.7,
        child: Image.network("https://raw.githubusercontent.com/samyak1209/change_managent/master/images/officeEnv.jpg"),),
        Container(color: Colors.orange,)*/
        Align(alignment: Alignment.topCenter,
            child: Container(height: MediaQuery.of(context).size.height*0.5,
              child: Image.network("https://raw.githubusercontent.com/samyak1209/change_managent/master/images/officeEnv.jpg"),
            )
        ),
        Align(alignment: Alignment.bottomCenter,
          child: Container(height: MediaQuery.of(context).size.height*0.55,
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromRGBO(255,203,5, 1),
                    Color.fromRGBO(241,90,49, 1),
                  ]),
              borderRadius: BorderRadius.all(
                  Radius.circular(16.0) //                 <--- border radius here
              ),
            ),
          ),),
        Align(alignment: Alignment.bottomCenter,child: Container(height: MediaQuery.of(context).size.height*0.5,
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: //Text('Management',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            Column(children: <Widget>[
              Text('Management',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
              Container(padding: EdgeInsets.only(top: 30),),
              Text('Lorem ipsum dolor siteiusmod tempor incididunt ut labore et dolore magna aliqua.',style: TextStyle(color: Colors.white,fontSize: 18),),
            ],)
        ),),
        Align(alignment: Alignment.bottomRight,child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 50, 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Skip'),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){return MyApp1();}));
                  //Container2();

                },
              ),
            ],
          ),
        ),)
      ],),
    );
  }
  Container3(){
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: MediaQuery.of(context).size.height,
      child: Stack(children: <Widget>[
        /*Container(height: MediaQuery.of(context).size.height*0.7,
        child: Image.network("https://raw.githubusercontent.com/samyak1209/change_managent/master/images/officeEnv.jpg"),),
        Container(color: Colors.orange,)*/
        Align(alignment: Alignment.topCenter,
            child: Container(height: MediaQuery.of(context).size.height*0.5,
              child: Image.network("https://raw.githubusercontent.com/samyak1209/change_managent/master/images/officeEnv.jpg"),
            )
        ),
        Align(alignment: Alignment.bottomCenter,
          child: Container(height: MediaQuery.of(context).size.height*0.55,
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromRGBO(238,61,133, 1),
                    Color.fromRGBO(105,80,161, 1),
                  ]),
              borderRadius: BorderRadius.all(
                  Radius.circular(16.0) //                 <--- border radius here
              ),
            ),
          ),),
        Align(alignment: Alignment.bottomCenter,child: Container(height: MediaQuery.of(context).size.height*0.5,
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: //Text('Management',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            Column(children: <Widget>[
              Text('Management',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
              Container(padding: EdgeInsets.only(top: 30),),
              Text('Lorem ipsum dolor sit amet, consectetur aor incididunt ut labore et dolore magna aliqua.',style: TextStyle(color: Colors.white,fontSize: 18),),
            ],)
        ),),
        Align(alignment: Alignment.bottomRight,child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 50, 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Next'),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){return MyApp1();}));
                  //Container2();

                },
              ),
            ],
          ),
        ),)
      ],),
    );
  }
}
