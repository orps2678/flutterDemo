import 'package:flutter/material.dart';

/*
void main() => runApp(Center(
  child: Text(
    'Hello Flutter',
    textDirection: TextDirection.ltr,
  )));
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // 這是你的應用程式的主題。
  //
  // 試試這個：運行你的應用程式，使用 "flutter run" 命令。你會看到應用程式有一個藍色的工具
  // 列。然後，不要退出應用程式，嘗試在下面的 colorScheme 中將 seedColor 改為
  // Colors.green，然後觸發 "熱重載" (hot reload)（儲存你的更改或在支援 Flutter 的 IDE 中按下
  // "熱重載" 按鈕，或者如果你使用命令列啟動應用程式，按下 "r"）。
  //
  // 注意到計數器沒有重設為零；在重新載入期間，應用程式的狀態不會丟失。要重設狀態，請使用 "熱重啟" (hot restart)。
  //
  // 這也適用於程式碼，不僅僅是值：大多數程式碼變更都可以使用熱重載來測試。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
