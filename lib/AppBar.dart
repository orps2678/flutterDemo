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
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        key: UniqueKey(), // Add a unique key here
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
    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar Title"),
          leading: const Icon(FontAwesomeIcons.apple),
          actions: const <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.magnifyingGlass),
              onPressed: null,
            )
          ],
          bottom: TabBar(
            tabs: tabList.map((choice) {
              return Tab(
                text: choice.title,
                icon: Icon(choice.icon),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
            children: tabList.map((choice) {
              return Center(
                child: Icon(
                  choice.icon,
                  size: 100.0,
                ),
              );
            }).toList()),
      ),
    );
  }
}

class TabChoice {
  final String title;
  final IconData icon;
  const TabChoice(this.title, this.icon);
}

const List<TabChoice> tabList = <TabChoice>[
  TabChoice('Happy', Icons.mood),
  TabChoice('Sad', Icons.mood_bad),
];
