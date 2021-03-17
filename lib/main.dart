import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Locations',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                        backgroundImage: AssetImage('images/elephant.jpg')),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    child: ContainedTabBarView(
                      tabBarProperties: TabBarProperties(
                        width: 200,
                        alignment: TabBarAlignment.start,
                      ),
                      tabs: [
                        Text(
                          'Featured',
                          style: TextStyle(
                              fontFamily: 'ArchitectsDaughter',
                              color: Colors.black),
                        ),
                        Text(
                          'Popular',
                          style: TextStyle(
                              fontFamily: 'ArchitectsDaughter',
                              color: Colors.black),
                        ),
                        Text(
                          'Trending',
                          style: TextStyle(
                              fontFamily: 'ArchitectsDaughter',
                              color: Colors.black),
                        ),
                      ],
                      views: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 250,
                                width: 320,
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        height: 170,
                                        width: 310,

                                        child: Column(children: [
                                          Card(
                                            child:ClipRRect(
                                              borderRadius: BorderRadius.circular(15.0),

                                            child: Container(
                                              height: 170,
                                              width: 310,
                                              child: Image.asset(
                                                'images/pixel2.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            elevation: 5.0,
                                            margin: EdgeInsets.all(10.0),
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 12,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Ocean at Algarve',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                        'Enjoy view oversky blue from your room',style: TextStyle(fontSize: 11),)
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                child: Container(
                                                  height: 55,
                                                  width: 50,
                                                  child: Card(
                                                    elevation: 5,
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,

                                                      children: [
                                                        Text(
                                                          '10',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text('Apr',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,color: Colors.grey),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 400,
                                height: 250,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 310,
                                      child: Column(children: [
                                        Card(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(15.0),
                                            child: Container(
                                              height: 170,
                                              width: 310,
                                              child: Image.asset(
                                                'images/pixel1.jpg',
                                                fit: BoxFit.cover,

                                              ),
                                            ),
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          elevation: 5.0,
                                          margin: EdgeInsets.all(10.0),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 25,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Antelope Canyon',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                        'Must have on a bucket because its awesome',style: TextStyle(fontSize: 11,),)
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                child: Container(
                                                  height: 55,
                                                  width: 50,
                                                  child: Card(
                                                    elevation: 5,
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          '23',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          ),
                                                        Text('Aug',style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500,color: Colors.grey),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(color: Colors.green),
                        Container(color: Colors.pink),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
