import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// https://github.com/flutterchina/dio 查

//底部其它文件
import 'amos_home.dart';
import 'amos_task.dart';
import 'amoserp.dart';
import 'amos_chart.dart';
import 'amos_my.dart';

class Index_page extends StatefulWidget {
  _Index_pageState createState() => _Index_pageState();
}

class _Index_pageState extends State<Index_page> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页'),
      ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.book),
      title: Text('任务'),
      ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.heart_solid),
      title: Text('hello'),
      ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.gear_big),
      title: Text('图表'),
      ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person),
      title: Text('我'),
      )
    
  ];

  final List tabBodies =[
    Home_page(),
    TaskPage(),
    AmosERPPage(),
    ChartPage(),
    MyPage(),
  ];

  int currentIndex = 0;
  var currentPage;

@override
  void initState() {
    currentPage = tabBodies[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
    bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: currentIndex,
    items: bottomTabs,
    onTap: (index){
      setState(() {
        currentIndex=index;
        currentPage=tabBodies[currentIndex];
      });
    },
    ),
    body: currentPage,
    );
  }
  }