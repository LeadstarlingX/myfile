import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var toggle = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,];
  var cur = 0;
  String s = "T";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("XO game"),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Center(
              child: Container(
                color: Colors.blue,
                child: GridView.builder(
                      padding:EdgeInsets.all(2.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      crossAxisCount: 3),
                  itemBuilder: (_, index) => Container(
                    color:Colors.white,
                    child: GestureDetector(
                        onTap: () {
                            setState((){if (toggle[index] == -1) {
                            cur == 0 ? s = "X" : s = "O";
                            toggle[index] = cur;
                            cur = 1 - cur;
                            print(s);
                          }});
                        },
                        child: Container(
                          child: Center(child: Text(s,style:TextStyle(fontSize:40),)),
                        )),
                  ),
                  itemCount: 9,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
