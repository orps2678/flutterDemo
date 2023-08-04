import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page',
        key: UniqueKey(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column example"),
        leading: const Icon(FontAwesomeIcons.dragon),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Gossiping  綜合 ◎[八卦]',
            style: TextStyle(fontSize: 20.0, color: Colors.purple),
          ),
          Text(
            'C_Chat  閒談 ◎[希洽] 票選出爐感謝各位積極參與',
            style: TextStyle(fontSize: 20.0, color: Colors.indigo),
          ),
          Text(
            'Baseball  棒球 ◎[棒球] 中職30 Baseball is Life',
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
          Text(
            'LoL  遊戲 ◎[LoL] 恭喜JT獲得2019LMS夏季冠軍',
            style: TextStyle(fontSize: 20.0, color: Colors.amber),
          ),
          Text(
            'Stock  學術 ◎新增板主noldorelf',
            style: TextStyle(fontSize: 20.0, color: Colors.cyan),
          ),
          Text(
            'Lifeismoney  省錢 ◎[省錢]',
            style: TextStyle(fontSize: 20.0, color: Colors.pinkAccent),
          ),
          Text(
            'NBA  籃球 ◎[NBA] 休賽季',
            style: TextStyle(fontSize: 20.0, color: Colors.brown),
          ),
        ],
      ),
    );
  }
}