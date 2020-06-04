import 'package:flutter/material.dart';

import 'package:hello/widget/button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: MyHomePage(title: 'My app'),
      routes: routers,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var routerList = routers.keys.toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new Container(
            child: new ListView.builder(
          itemBuilder: (context, index) {
            return new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routerList[index]);
              },
              child: new Card(
                  child: new Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      child: new Text(routerList[index]))),
            );
          },
          itemCount: routerList.length,
        )));
  }
}

Map<String, WidgetBuilder> routers = {
  "1": (context) {
    return new MyButton();
  },
    "2": (context) {
    return new MyButton();
  },
    "3": (context) {
    return new MyButton();
  },
    "4": (context) {
    return new MyButton();
  },
    "5": (context) {
    return new MyButton();
  },
    "6": (context) {
    return new MyButton();
  },
    "7": (context) {
    return new MyButton();
  },
    "hahah": (context) {
    return new MyButton();
  }
};
