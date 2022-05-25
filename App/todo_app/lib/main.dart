import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Djin Todo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Djin Todo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height;
    final wt = MediaQuery.of(context).size.width;
    return MaterialApp(
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: <Widget>[
                // Contents of tabs
                TabBarView(
                  children: [
                    Container(
                      color: Colors.white,
                    ),
                    Container(
                      color: cardColor,
                    ),
                    Container(
                      color: Colors.white,
                    ),
                  ],
                ),
                // Upper Body
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.height * 1,
                  padding: const EdgeInsets.only(left: 30),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Intray",
                        style: intrayTitleStyle,
                      ),
                      Container(),
                    ],
                  ),
                ),
                //Floating button
                Container(
                  height: ht * 0.2,
                  width: wt * 0.2,
                  margin: EdgeInsets.only(
                    top: ht * 0.1,
                    left: (wt * 0.5) - ((ht * 0.07) / 2),
                  ),
                  child: FloatingActionButton(
                    elevation: 5,
                    onPressed: () {},
                    backgroundColor: cardColor,
                    child: SizedBox(
                        height: ht * 0.18,
                        width: wt * 0.18,
                        child: Icon(Icons.add, size: ht * 0.07)),
                  ),
                ),
              ],
            ),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: darkGreyColor,
              title: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: Icon(Icons.perm_identity),
                  ),
                ],
                // labelColor: darkGreyColor,
                unselectedLabelColor: Colors.white12,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
