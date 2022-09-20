import 'package:assignment/view/widgets/chanceWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' show pi;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextStyle style = const TextStyle(fontSize: 22);

  final String text = "Will China Invade Taiwan before end september ?";

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final double heightRatio = size.height / 731;
    final double widthRatio = size.width / 375;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              color: Colors.grey,
              height: heightRatio * 280,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 9),
                      child: Row(
                        children: [
                          Flexible(child: Text(text, style: style)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.abc_outlined))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            ChanceWidget(heightRatio: heightRatio, widthRatio: widthRatio),
            Container(
              // height: heightRatio * 30,
              child: TabBar(tabs: [
                Tab(
                  text: 'Research and News',
                )
              ]),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          backgroundColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              label: 'News',
              icon: Icon(
                Icons.newspaper,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Trending',
              icon: Icon(
                Icons.trending_up,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.pie_chart,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              label: 'People',
              // backgroundColor: Colors.red,
              icon: Icon(
                Icons.people,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
