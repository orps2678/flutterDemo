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
        key: UniqueKey(),),
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
        title: const Text("Row example"),
        leading: const Icon(FontAwesomeIcons.dragon),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(FontAwesomeIcons.google, color: Colors.red,),
          Expanded(
            child: Text(
                'Google有限公司是源自美國的跨國科技公司，為Alphabet Inc.的子公司，業務範圍涵蓋網際網路廣告、網際網路搜尋、雲端運算等領域，開發並提供大量基於網際網路的產品與服務，其主要利潤來自於AdWords等廣告服務。'),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: null,
          )
        ],
      ),
    );
  }
}