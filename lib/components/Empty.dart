import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Artile_one extends StatefulWidget {
  @override
  _Artile_oneState createState() => _Artile_oneState();
}

class _Artile_oneState extends State<Artile_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/tcslogo.png'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromRGBO(99,194,157,1),
                    Color.fromRGBO(61,133,198,1)
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
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Center(
                  child: Text("Customer Migrations_20 March 2020",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(height: 20,),
                Text("Y’ello All,"),
                SizedBox(height: 20.0,),
                Text("Please note that the Siyakhula programme will be continuing with the sixth drop of the CBU Post-Paid customer migrations from the legacy system to iLula.  This follows the past five successful drops since we started.",textAlign: TextAlign.justify,),
                SizedBox(height: 20.0,),
                Text("The migration of an estimated 85 057 customer accounts and 111 915 MSISDN is planned for this morning of Friday 20 March 2020.",textAlign: TextAlign.justify,),
                SizedBox(height: 20.0,),
                Text("Once again we request you take note of the below:"),
                SizedBox(height: 20.0,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    Expanded(
                      flex:1,
                      child: Text("1",textAlign: TextAlign.start,),
                    ),
                    Expanded(
                      flex: 12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Please note the customers on iLula will not be able to",textAlign: TextAlign.justify,),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Expanded(
                                flex:0,
                                child: Text("a.",textAlign: TextAlign.start,),
                              ),
                              Flexible(
                                //flex: 20,
                                child: Column(
                                  children: [
                                    Text("   Perform upgrades on the online store"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Expanded(
                                flex:0,
                                child: Text("b.",textAlign: TextAlign.start,),
                              ),
                              Flexible(
                                //flex: 12,
                                child: Column(
                                  children: [
                                    Text("   Pay bills on the App"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Expanded(
                                flex:1,
                                child: Text("c.",textAlign: TextAlign.start,),
                              ),
                              Expanded(
                                flex: 12,
                                child: Column(
                                  children: [
                                    Text("Use self-service platforms like My Contract and My Customer"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    Expanded(
                      flex:1,
                      child: Text("2",textAlign: TextAlign.start,),
                    ),
                    Expanded(
                      flex: 12,
                      child: Column(
                        children: [
                          Text("Please request customers to visit their nearest store for the above service requests",textAlign: TextAlign.justify,),
                        ],
                      ),
                    )

                  ],
                ),
                SizedBox(height: 10,),
                Text("We thank you for your patience thus far and look forward to completing the full migration process and have all CBU Post-Paid customers on iLula."),
                SizedBox(height: 10,),
                Text("To further assist with working on iLula please follow the Siyakhula link"),
                Text("#wegotu #Bozza #iLula"),
                SizedBox(height: 20,),
                Text("Regards,",style: TextStyle(fontStyle: FontStyle.italic),),
                SizedBox(height: 10,),
                Text(" Siyakhula Team"),



              ],
            ),
          )


        ],
      ),
    );
  }
}
class SecondArticle extends StatefulWidget {
  @override
  _SecondArticleState createState() => _SecondArticleState();
}

class _SecondArticleState extends State<SecondArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/tcslogo.png'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromRGBO(99,194,157,1),
                    Color.fromRGBO(61,133,198,1)
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
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "iLula Support for stores trading in Lockdown",style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Y’ello All,"),
                SizedBox(height: 10,),
                Text("Please note that iLula team will be actively supporting during the lockdown period. If the stores encounter a challenge in iLula, please follow the below steps (applicable for active stores in lockdown period):",textAlign: TextAlign.justify,),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    Expanded(
                      flex:1,
                      child: Text("1",textAlign: TextAlign.start,),
                    ),
                    Expanded(
                      flex: 12,
                      child: Column(
                        children: [
                          Text("Ask for assistance from a fellow agent/ Supervisor in the store."),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    Expanded(
                      flex:1,
                      child: Text("2",textAlign: TextAlign.start,),
                    ),
                    Expanded(
                      flex: 12,
                      child: Column(
                        children: [
                          Text("If agent/ supervisor is unable to assist, raise a Remedy ticket. Post raising a Remedy ticket you can connect (Email or call) with the BA assigned to your region for assistance. ",textAlign: TextAlign.justify,),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Expanded(
                                flex:1,
                                child: Text("a.",textAlign: TextAlign.start,),
                              ),
                              Expanded(
                                flex: 12,
                                child: Column(
                                  children: [
                                    Text("For knowledge query, BA will assign the query to trainer for assistance",textAlign: TextAlign.justify,),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Expanded(
                                flex:1,
                                child: Text("b",textAlign: TextAlign.start,),
                              ),
                              Expanded(
                                flex: 12,
                                child: Column(
                                  children: [
                                    Text("For technical query, BA will coordinate with technical and support team for resolution.",textAlign: TextAlign.justify,),
                                  ],
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Text("Find below list of BAs and trainers assigned per region."),
                Text("Please cascade the information to stores which are active.",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("When connecting with BAs please share below information:",textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                SizedBox(height: 10,),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("1."),
                        SizedBox(width: 10,),
                        Text("Agent Name")
                      ],
                    ),
                    Row(
                      children: [
                        Text("2."),
                        SizedBox(width: 10,),
                        Text("SABC Code")
                      ],
                    ),
                    Row(
                      children: [
                        Text("3."),
                        SizedBox(width: 10,),
                        Text("Region Name ")
                      ],
                    ),
                    Row(
                      children: [
                        Text("4."),
                        SizedBox(width: 10,),
                        Text("MSISDN")
                      ],
                    ),
                    Row(
                      children: [
                        Text("5."),
                        SizedBox(width: 10,),
                        Text("Order Number")
                      ],
                    ),
                    Row(
                      children: [
                        Text("6."),
                        SizedBox(width: 10,),
                        Text("Step in Process")
                      ],
                    ),
                    Row(
                      children: [
                        Text("7."),
                        SizedBox(width: 10,),
                        Text("Screenshot ")
                      ],
                    ),
                    Row(
                      children: [
                        Text("8."),
                        SizedBox(width: 10,),
                        Text("Issue Description")
                      ],
                    ),
                    Row(
                      children: [
                        Text("9."),
                        SizedBox(width: 10,),
                        Text("Remedy ticket number")
                      ],
                    ),





                  ],
                ),
                SizedBox(height: 20,),
                Text("#wegotu #Bozza #iLula"),
                SizedBox(height: 10,),
                Text("Regards,"),
                SizedBox(height: 10,),
                Text("Siyakhula Team")
              ],
            ),
          )
        ],
      ),


    );
  }
}
class ThirdArticle extends StatefulWidget {
  @override
  _ThirdArticleState createState() => _ThirdArticleState();
}

class _ThirdArticleState extends State<ThirdArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/tcslogo.png'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromRGBO(99,194,157,1),
                    Color.fromRGBO(61,133,198,1)
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
      ),

      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "iLula Adoption Report – KZN Region",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Y’ello Leadership,"),
                SizedBox(height: 20,),
                Text("Please find attached the updated iLula usage report for your region.  This report provides visibility on the adoption and utilisation of iLula by breaking down all order actions on a regional and store level. Furthermore, this report is shared with senior leadership on a national level. Please take this opportunity to actively drive the adoption of iLula and showcase your stores capacity to lead this transformational change journey in your stores.",textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Text("Below Adoption (Till 24 March 2020) is calculated basis on Completed orders done by the stores.",textAlign: TextAlign.justify,),
                SizedBox(height: 20,),
                Text("Please use the attached excel for additional details and analysis."),
                Text("The excel has details of adoption at store and agent level. Please vet the excel and confirm if any store or agent is not captured in the excel."),
                SizedBox(height: 20,),
                Text("Support needed from you:",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold),),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Expanded(
                          flex:1,
                          child: Text("1",textAlign: TextAlign.start,),
                        ),
                        Expanded(
                          flex: 12,
                          child: Column(
                            children: [
                              Text("Verify the data to check all your stores and agents are listed in the excel sheet.",textAlign: TextAlign.justify,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Expanded(
                          flex:1,
                          child: Text("2",textAlign: TextAlign.start,),
                        ),
                        Expanded(
                          flex: 12,
                          child: Column(
                            children: [
                              Text("SASs and Supervisors to check with stores and agents for low count of completed orders. Questions we need to ask - There are stores and agents which are performing many transactions in iLula, why are some stores/agents lagging.",textAlign: TextAlign.justify,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Expanded(
                          flex:1,
                          child: Text("3",textAlign: TextAlign.start,),
                        ),
                        Expanded(
                          flex: 12,
                          child: Column(
                            children: [
                              Text("Approved orders and Pended Orders are potential sales. Agents should progress with these orders.",textAlign: TextAlign.justify,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Expanded(
                          flex:1,
                          child: Text("4",textAlign: TextAlign.start,),
                        ),
                        Expanded(
                          flex: 12,
                          child: Column(
                            children: [
                              Text("Ensure Supervisors attend iLula weekly calls. Leverage  iLula weekly calls for best performing stores/agents to share “What they are doing right”. Let’s collaborate and Let the late adopters learn from top performers in the region",textAlign: TextAlign.justify,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text("Let us continue on this transformational journey in creating a world class system for our world class #Bozza network. #wegotu #Bozza #iLula",textAlign: TextAlign.justify,),
                SizedBox(height: 20,),
                Text("Regards,",style: TextStyle(fontStyle: FontStyle.italic),),
                SizedBox(height: 10,),
                Text("Siyakhula Team"),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
