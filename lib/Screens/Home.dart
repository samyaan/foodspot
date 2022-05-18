import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, BottomNavigationBar, BottomNavigationBarType, BuildContext, ButtonBar, Card, Colors, FlatButton, Icons, InputDecoration, Key, ListTile, MaterialApp, OutlineInputBorder, SafeArea, Scaffold, State, StatefulWidget, Text, TextField, TextStyle, Widget;

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          minimum: const EdgeInsets.all(5.0),
          child: Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text(
                  'FoodSpot.',
                  style: TextStyle(fontFamily: 'RobotoMono', fontSize: 27.0, color: Colors.white),
                ),
              ),
              backgroundColor: Colors.black ,
            ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.directions_car),
                    label: 'Food',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.border_color),
                    label: 'Orders',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.insert_emoticon),
                    label: 'Profile',
                  ),
                ],
              ),
            body: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left:15.0,right: 15.0,top:20,bottom: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      labelText: 'Search',
                    ),
                  ),
                ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                          'Name',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),

                    ),
                    Image.asset('lib/images/download.jpg'),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Location: Currently At: Location',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Todays hours: Hours',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,

                      children: [
                        FlatButton(
                          textColor: const Color(0xFF6200EE),
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('ACTION 1'),
                        ),
                        FlatButton(
                          textColor: const Color(0xFF6200EE),
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('ACTION 2'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const ListTile(
                        title: SizedBox(
                          height: 30,
                          width: 200,// 1st set height
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              "Name",
                            style: TextStyle(color: Colors.white,backgroundColor: Colors.black),
                          ),
                          ), // 2nd wrap in FittedBox
                        ),
                      ),
                      Image.asset('lib/images/download.jpg'),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Location: Currently At: Location',
                          style: TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Todays hours: Hours',
                          style: TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,

                        children: [
                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('ACTION 1'),
                          ),
                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('ACTION 2'),
                          ),
                        ],
                      ),
                    ],
                  ),
                )],
            )
              ),
            ),

          );
  }
}
//
// Column(
// children: const <Widget>[
//
// Padding(padding: EdgeInsets.all(8),
//
// )
// ],
// ),