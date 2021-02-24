import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
} //공통코드

//여기부터 수정
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Scaffold를 감싸고
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab'),
          bottom: TabBar(
            //Scaffold의 bottom 프로퍼티에 Tabbar지정
            tabs: <Widget>[
              //tabs 프로퍼티에 tab의 리스트 지정
              Tab(icon: Icon(Icons.tag_faces)),
              Tab(text: '메뉴2'),
              Tab(icon: Icon(Icons.info), text: '메뉴3'),
            ],
          ),
        ), // 주로 여기에 코딩
        body: TabBarView(
            //Scaffold의 body프로퍼티에는 TabBarView배치
            children: <Widget>[
              //children프로퍼티에 표시할 화면 배치
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.red,
              ),
            ]),
      ),
    );
  }
}
