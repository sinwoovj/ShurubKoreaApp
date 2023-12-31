import 'package:flutter/material.dart';
import 'package:shurubkorea/page1.dart';
import 'package:shurubkorea/page2.dart';
import 'package:shurubkorea/page3.dart';
import 'package:shurubkorea/settting_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      tabController.animateTo(index);
    });
  }

  final List<Widget> _screens = <Widget>[
    //Text('홈화면'),
    Page1(),
    Page2(),
    SettingPage()
    //Page3()
  ];
  @override
  void initState() {
    tabController = TabController(length: _screens.length, vsync: this)
      ..addListener(() {
        print('tab listener');
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'setting',
          ),
        ],
        currentIndex: tabController.index,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
