import 'package:flutter/material.dart';
import 'tile.dart';
import 'favouritespage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'/',
      routes:{
        '/':(context)=>HomePage(),
        '/favourites':(context)=>FavouritesPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _tilevertspacer = 20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Testing Sample"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.monitor_heart),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/favourites');
                    },
                    child: Text(
                      "Favourites",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView(
            children: [
              Tile(name:"Item 1"),
              SizedBox(height:_tilevertspacer,),
              Tile(name:"Item 2"),
              SizedBox(height:_tilevertspacer,),
              Tile(name:"Item 3"),
              SizedBox(height:_tilevertspacer,),
              Tile(name:"Item 4"),
              SizedBox(height:_tilevertspacer,),
              Tile(name:"Item 5"),
              SizedBox(height:_tilevertspacer,),
              Tile(name:"Item 6"),
              SizedBox(height:_tilevertspacer,),
              Tile(name:"Item 7"),
              SizedBox(height:_tilevertspacer,),
              Tile(name:"Item 8"),
              SizedBox(height:_tilevertspacer,),
              Tile(name:"Item 9"),
              SizedBox(height:_tilevertspacer,),
              Tile(name:"Item 10"),
              SizedBox(height:_tilevertspacer,),
              ],
        ),
      ),
      ),
    );
  }
}

