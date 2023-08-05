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
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
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
        title: const Text("Row example"),
        leading: const Icon(FontAwesomeIcons.dragon),
      ),
      body: const Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              Expanded(
                child: Text(
                  'Google有限公司是源自美國的跨國科技公司，為Alphabet Inc.的子公司，業務範圍涵蓋網際網路廣告、網際網路搜尋、雲端運算等領域，開發並提供大量基於網際網路的產品與服務，其主要利潤來自於AdWords等廣告服務。',
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: null,
              )
            ],
          ),
          SizedBox(height: 16), // 添加间隔，这里使用了SizedBox
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.apple,
                color: Colors.green,
              ),
              Expanded(
                child: Text(
                  '蘋果公司（Apple Inc.）是美國科技公司，成立於1977年1月3日，總部位於加利福尼亞州的庫比蒂諾市。以設計、製造及銷售消費電子產品、軟體及服務，其最知名的硬體產品有iPhone智慧型手機、iPad平板電腦、Mac個人電腦、iPod多媒體播放器、Apple手錶及Apple TV等。',
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: null,
              )
            ],
          ),
          // You can add more repeated Rows here
        ],
      ),
    );
  }
}
