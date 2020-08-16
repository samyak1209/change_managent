import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:changemanagent/POC.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('About Us'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Column(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              child: Image.asset('images/tcs.jpg',fit: BoxFit.fill,),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10,10),
              child: Text('TCS is an Indian multinational information technology (IT) service and consulting company headquartered in Mumbai, Maharashtra, India. It is a subsidiary of the Tata Group and operates in 149 locations across 46 countries.TCS is the second largest Indian company by market capitalisation.Tata consultancy services is now placed among the most valuable IT services brands worldwide. In 2015, TCS was ranked 64th overall in the Forbes World Most Innovative Companies ranking, making it both the highest-ranked IT services company and the top Indian company. It is the world largest IT services provider. As of 2018, it is ranked eleventh on the Fortune India 500 list. In April 2018, TCS became the first Indian IT company to reach 100 billion in market capitalisation, and second Indian company ever (after Reliance Industries achieved it in 2007) after its market capitalisation stood at ₹6,79,332.81 crore (102.6 billion) on the Bombay Stock Exchange',style: TextStyle(fontSize: 16),),
            ),
          ],),
        ],
      ),
    );
  }
}
