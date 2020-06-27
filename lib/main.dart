import 'package:flutter/material.dart';
import 'package:fortest/testapp_icons.dart';
import 'Wallet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            pageSnapping: true,
            //scrollDirection: Axis.values,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              Container(child: Wallet()),
              Container(child: Container()),
              Container(child: Container()),
              Container(child: Container()),
              Container(child: Container()),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
            backgroundColor: Colors.white,
          selectedItemColor: Color(0xFFFECE2E),
          unselectedItemColor: Color(0xFFAEAEB4),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          }, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: Icon(Testapp.menu1),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Testapp.tab2, ),
                title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Testapp.tab3),
                title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Testapp.tab4),
                title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Testapp.tab5),
                title: Text('')
            ),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
