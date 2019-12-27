import 'package:flutter/material.dart';
// import './amos/amos_home.dart';//相对位置下，主界面文件
import 'package:flutter_amoserp/amos/amos_index.dart';

//1,入口函数
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '企业联合作战指挥管理系统',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(//主题
        primarySwatch: Colors.purple,
      ),
      home: Index_page(),//主界面文件
    );
  }
}