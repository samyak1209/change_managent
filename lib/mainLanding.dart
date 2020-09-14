import 'package:changemanagent/POC.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyApp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp1> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  static Container pic1(){
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow, Colors.deepOrange],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: new BorderRadius.only(
            topLeft:  const  Radius.circular(30.0),
            topRight: const  Radius.circular(30.0),
            bottomLeft: const Radius.circular(30.0),
            bottomRight: const Radius.circular(30.0),
          )
      ),
    );
  }
  static Container pic3(){
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.lightBlueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: new BorderRadius.only(
            topLeft:  const  Radius.circular(30.0),
            topRight: const  Radius.circular(30.0),
            bottomLeft: const Radius.circular(30.0),
            bottomRight: const Radius.circular(30.0),
          )
      ),
    );
  }
  static Container pic2(){
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.deepPurple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: new BorderRadius.only(
            topLeft:  const  Radius.circular(30.0),
            topRight: const  Radius.circular(30.0),
            bottomLeft: const Radius.circular(30.0),
            bottomRight: const Radius.circular(30.0),
          )
      ),
    );
  }
  Widget intro(){
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/user_male2-512.png'),
          radius: 35.0,
        ),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

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
              ),)
          ],
        ),],);
  }
  int curindex=0;
  @override
  Widget build(BuildContext context) {
    final tabs=[home(context),
      secondscreen(),
      Center(child: Text('Connect'),),
      Center(child: Text('Training'),),
    ];

    return new MaterialApp(
        theme: ThemeData(
          // Define the default Brightness and Colors
          brightness: Brightness.light,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],
        ),
        home: Scaffold(
            backgroundColor: Color.fromRGBO(242,242,242, 1),
            key: scaffoldKey,
            /*drawer: new Drawer(
          child: new ListView(),
        ),*/
            /*appBar: new AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search,)),
            IconButton(icon: Icon(Icons.notifications,)),
            IconButton(icon: Icon(Icons.supervised_user_circle,)),
          ],
          title: Image.asset('images/tcslogo.png'),flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromRGBO(99,194,157, 1),
                    Color.fromRGBO(61,133,198, 1),
                  ])
          ),
        ),      ),*/
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index){setState(() {
                curindex=index;
              });},
              currentIndex: curindex,
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.blueGrey,),
                  title: Text('Home', style: TextStyle(
                    color: Colors.blueGrey,
                  ),),
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.announcement, color: Colors.blueGrey,),
                  title: Text('About', style: TextStyle(
                    color: Colors.blueGrey,
                  ),),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today, color: Colors.blueGrey,),
                  title: Text('Calendar', style: TextStyle(
                    color: Colors.blueGrey,
                  ),),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz, color: Colors.blueGrey,),
                  title: Text('More', style: TextStyle(
                    color: Colors.blueGrey,
                  ),),
                ),
              ],
              selectedItemColor: Colors.blue,

            ),
            body: tabs[curindex]
        ));
  }
  int _current = 0;
    ListView home(context){
    List imgList = ['1','2','3'];
    List<T> map<T>(List list, Function handler) {
      List<T> result = [];
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
      return result;
    }
    final Color background = Color.fromRGBO(99,194,157, 1);
    final Color fill = Color.fromRGBO(61,133,198, 1);
    final List<Color> gradient = [
      background,
      background,
      fill,
      fill,
    ];
    final double fillPercent = 50; // fills 56.23% for container from bottom
    final double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 1.0];

    return ListView(
        children: <Widget>[
          Column(children: <Widget>[
            AppBar(
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search,)),
                IconButton(icon: Icon(Icons.notifications,)),
                IconButton(icon: Icon(Icons.supervised_user_circle,)),
              ],
              title: Image.asset('images/tcslogo.png'),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors:  [Colors.blue, Colors.green])
                ),
              ),     //backgroundColor: Color.fromRGBO(99,194,157, 1),
            ),
            Stack(children: <Widget>[

              Container(decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:  [Colors.green, Colors.blue],
                  end: Alignment.center,
                  begin: Alignment.topCenter,
                  //stops: stops,
                ),
              ),height: 60,),
              Container(padding: EdgeInsets.fromLTRB(10, 20, 10, 0),child: Container(height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:  const  Radius.circular(30.0),
                      topRight: const  Radius.circular(30.0),
                      bottomLeft: const Radius.circular(30.0),
                      bottomRight: const Radius.circular(30.0),
                    )),padding: EdgeInsets.only(left: 20,top: 10,bottom: 10)
                ,child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://github.com/samyak1209/change_managent/blob/master/Image%201.png?raw=true'),
                      radius: 40.0,
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
                          ),)
                      ],
                    ),],),),)
            ],),
            SizedBox(height: 10,),
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.only(left: 5,bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                  child:  Stack(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      pic1(),
                      SizedBox(width: 10,),
                      Container(child :Align(child:InkWell(
                          child: Text("Go",style: TextStyle(color: Colors.white,fontSize: 20),),
                          onTap:(){
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PocPage(),
                                ),
                              );*/
                          }
                      ),alignment: Alignment.bottomLeft,),padding: EdgeInsets.all(10),)
                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    /*image: DecorationImage(
                        image: NetworkImage('https://homepages.cae.wisc.edu/~ece533/images/cat.png'),
                        fit: BoxFit.cover,
                      ),*/
                  ),
                  child: Stack(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      pic2(),
                      SizedBox(width: 10,),
                      Container(child :Align(child:InkWell(
                          child: Text("Go",style: TextStyle(color: Colors.white,fontSize: 20),),
                          onTap:(){
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PocPage(),
                                ),
                              );*/
                          }
                      ),alignment: Alignment.bottomLeft,),padding: EdgeInsets.all(10),),
                      Container(child: Align(alignment: Alignment.centerRight,child: Image.asset('images/cc.png',),),padding: EdgeInsets.only(right: 20),),
                      Container(child: Align(alignment: Alignment.topLeft,child: Text('Promo title',style: TextStyle(color: Colors.white,fontSize: 20),),),padding: EdgeInsets.all(30),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                  child:  Stack(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      pic3(),
                      SizedBox(width: 10,),
                      Container(child :Align(child:InkWell(
                          child: Text("Go",style: TextStyle(color: Colors.white,fontSize: 20),),
                          onTap:(){
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PocPage(),
                                ),
                              );*/
                          }
                      ),alignment: Alignment.bottomLeft,),padding: EdgeInsets.all(10),)
                    ],
                  ),
                ),
              ],
              enableInfiniteScroll: false,
              reverse: false,
              enlargeCenterPage: true,
              aspectRatio:
              16 / 9,
              onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });}
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.blue : Colors.blueGrey,
                  ),
                );
              }),
            ),
            Container(padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: new BoxDecoration(
                        color: Colors.white,

                        borderRadius: new BorderRadius.only(
                          topLeft:  const  Radius.circular(30.0),
                          topRight: const  Radius.circular(30.0),
                          bottomLeft: const Radius.circular(30.0),
                          bottomRight: const Radius.circular(30.0),
                        )
                    ),
                    child: Column(
                      children: [
                        /*Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //SizedBox(height: 5,),
                            *//*Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:Colors.grey,
                              ),
                              child:IconButton(
                                icon: Icon(Icons.navigate_before,color: Colors.white,),
                                onPressed: (){},
                              ),
                            ),
*//*
                            //SizedBox(width: 100,),
                            Center(
                              child:Text('Articles',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                ),),
                            ),
                            //SizedBox(width: 100,),
                            *//*Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:Colors.blueAccent,
                              ),
                              child:IconButton(
                                icon: Icon(Icons.navigate_next,color: Colors.white,),
                                onPressed: (){},
                              ),
                            ),*//*
                          ],
                        ),*/
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20),
                          padding: EdgeInsets.all(12),
                          decoration: new BoxDecoration(
                              color: Colors.white,

                              borderRadius: new BorderRadius.only(
                                topLeft:  const  Radius.circular(30.0),
                                topRight: const  Radius.circular(30.0),
                                bottomLeft: const Radius.circular(30.0),
                                bottomRight: const Radius.circular(30.0),
                              )
                          ),
                          child:  Center(
                            child: Text('Articles',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),),
                          ),
                        ),

                      ],

                    ),

                  ),
                  SizedBox(height: 10,),
                  Container(padding: EdgeInsets.all(10),
                      child:
                      //Text('HI'),
                      Column(children: <Widget>[
                        //SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            InkWell(
                                child: Text("Article Title",style: TextStyle(color: Colors.blueAccent,fontSize: 25,fontWeight: FontWeight.bold),),
                                onTap:(){
                                  //Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> PocPage()));
                                }
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text("Subtitle",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Container(
                          margin: EdgeInsets.only(left:22,right: 20 ),
                          child: Text(
                            'Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                            ,style: TextStyle(fontSize: 15), ),
                        ),
                      ],)
                  ),

                ],
              ),
            ),
          ],
          ),
        ]);
  }
  static DefaultTabController secondscreen(){
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('images/tcslogo.png'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.pink,
                      Colors.deepPurple
                    ])
            ),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                    icon: Icon(Icons.search,color: Colors.white,),
                    onPressed: null),
                IconButton(
                    icon: Icon(Icons.add_alert,color: Colors.white,),
                    onPressed: null),
                IconButton(
                    icon: Icon(Icons.account_circle,color: Colors.white,),
                    onPressed: null),
              ],
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Objectives'),
              Tab(text: 'Scope',),
              Tab(text: 'Plan'),
              Tab(text: 'Team',)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen(),
            ForthScreen()
          ],
        ),
      ),
    );

  }
}
class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final image = [Icons.equalizer, Icons.volume_down, Icons.settings];
  final heading = ["Objective Title", "Objective Title", "Objective Title"];
  final subtitle = ["Subtitle 1", "Subtitle 2", "Subtitle 3"];
  final para = [
    "Lorem ipsum dolor sit amet, consectetur adipis cing elit, sed do eiusmod tempor incididunt ut labore et dgolore…",
    "Lorem ipsum dolor sit amet, consectetur adipis cing elit, sed do eiusmod tempor incididunt ut labore et dgolore…",
    "Lorem ipsum dolor sit amet, consectetur adipis cing elit, sed do eiusmod tempor incididunt ut labore et dgolore…"
  ];
  final color = [Colors.deepPurple, Colors.pink, Colors.deepPurple];
  final iconcolor = [Colors.white, Colors.white, Colors.white];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(15),
                child: ListTile(
                  leading: Container(
                    decoration: new BoxDecoration(
                        color: color[index],

                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(30.0),
                          topRight: const Radius.circular(30.0),
                          bottomLeft: const Radius.circular(30.0),
                          bottomRight: const Radius.circular(30.0),
                        )
                    ),
                    child: IconButton(icon: Icon(image[index]),
                      iconSize: 30,
                      color: iconcolor[index],
                      onPressed: () {},),
                  ),
                  title: Container(
                    child: InkWell(
                      child: Text("Article Title", style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                      /* onTap:(){
                          if(index==0){
                            Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> EmptyScreen()));
                          }
                          else if(index==1){
                            Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> EmptyScreen()));
                          }
                          else{
                            Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> EmptyScreen()));
                          }
                        }*/
                    ),
                  ),
                  dense: true,
                  isThreeLine: true,
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Text('${subtitle[index]}', style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                      SizedBox(height: 15,),
                      Text('${para[index]}', style: TextStyle(
                          height: 1.5, color: Colors.black54, fontSize: 14),),
                    ],
                  ),
                ),);
            },
            separatorBuilder: (BuildContext context, int index) =>
                Divider(
                  height: 13, color: Colors.black,),
            itemCount: 3),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child:
                Text('Second Activity Screen',
                  style: TextStyle(fontSize: 21),)
            )
        )
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child:
                Text('Third Activity Screen',
                  style: TextStyle(fontSize: 21),)
            )
        )
    );
  }
}
class ForthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child:
                Text('Forth Activity Screen',
                  style: TextStyle(fontSize: 21),)
            )
        )
    );
  }
}
class MyCustomContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color progressColor;
  final double progress;
  final double size;
  //final LinearGradient gradient;

  const MyCustomContainer({
    Key key,
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.red,
    //this.gradient=LinearGradient(colors: <Color>[])
    @required this.progress,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //borderRadius: BorderRadius.circular(size / 2),
      child: SizedBox(
        height: size,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              color: backgroundColor,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size * progress,
                color: progressColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
