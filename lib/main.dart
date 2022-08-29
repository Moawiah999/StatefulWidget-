import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool Jordanian = false;
  bool not_jordanian = false;
  bool CheckboxList = true;
  String mytext = "";
  List<Color> defaultmode = [Colors.cyan, Colors.teal, Colors.orange];
  List<Color> lightcolor = [Colors.white60, Colors.cyan];
  List<Color> darkmode = [
    Color.fromARGB(253, 0, 0, 0),
    Color.fromARGB(171, 1, 0, 2)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: defaultmode),
              ),
              width: double.infinity,
              height: 600,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "You are using my app",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: MaterialButton(
                        color: Colors.red,
                        child: Text("press here"),
                        onPressed: () {
                          setState(() {
                            mytext = "Welcome to my application";
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "$mytext",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Center(
                          child: MaterialButton(
                            color: Color.fromARGB(255, 233, 187, 119),
                            child: Text(
                              "lightmode",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                            onPressed: () {
                              setState(() {
                                defaultmode = lightcolor;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 97,
                      ),
                      Container(
                        child: Center(
                          child: MaterialButton(
                            color: Color.fromARGB(122, 15, 22, 26),
                            child: Text(
                              "darkmode",
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () {
                              setState(() {
                                defaultmode = darkmode;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Please select the nationality",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.brown,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Divider(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Jordanian",
                            style: TextStyle(fontSize: 20),
                          ),
                          Checkbox(
                            activeColor: Colors.amber,
                            value: Jordanian,
                            onChanged: (val) {
                              setState(() {
                                Jordanian = val!;
                              });
                            },
                          ),
                          Text(
                            "not jordanian",
                            style: TextStyle(fontSize: 20),
                          ),
                          Checkbox(
                            activeColor: Colors.amber,
                            value: not_jordanian,
                            onChanged: (val) {
                              setState(() {
                                not_jordanian = val!;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CheckboxListTile(
              selectedTileColor: Color.fromARGB(255, 155, 43, 3),
              contentPadding: EdgeInsets.all(15),
              title: Text(
                "I am from Jordan",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              checkColor: Colors.green,
              subtitle: Text(
                "from Irbid",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              activeColor: Colors.yellow,
              secondary: Icon(Icons.home),
              value: CheckboxList,
              onChanged: (value) {
                setState(() {
                  CheckboxList = value!;
                });
              },
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 400,
              color: Color.fromARGB(255, 66, 6, 230),
              child: Text(
                "first container",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              height: 200,
              child: ListView(shrinkWrap: true, children: [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 400,
                  color: Colors.lime,
                  child: Text(
                    "small container",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ]),
            ),
            // ListView(
            //   children: [
            //     Container(
            //       alignment: Alignment.center,
            //       width: double.infinity,
            //       height: 400,
            //       color: Color.fromARGB(255, 230, 6, 6),
            //       child: Text(
            //         "small container",
            //         style: TextStyle(fontSize: 30),
            //       ),
            //     ),
            //   ],
            // ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 400,
              color: Color.fromARGB(255, 6, 230, 73),
              child: Text(
                "second container",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
