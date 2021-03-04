import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondPage.dart';
import 'memopage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: NameListPage() //첫페이지 시작페이지,
        );
  }
}

class NameListPage extends StatelessWidget {
  //첫번째 라우트 (페이지)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('학생 목록'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            iconSize: 40.0,
            onPressed: () {
              //버튼 눌렸을때 처리
            }, // 리스트 목록 추가 코드 작성
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ListTile(
            title: Text('이름'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => (SecondPage()), //2번째 페이지로 이동하는 코드
                ),
              );
            }, //2번째 페이지로 이동하는 코드 작성
            onLongPress: () {
              showAlertDialog(context);
            }, // 수정 및 삭제 하시겠습니까? 알럿창
          ),
        ],
      ), //주로 body에 코드를 쓴다
    );
  }

  void showAlertDialog(BuildContext context) async {
    //알럿창
    String result = await showDialog(
      context: context,
      barrierDismissible: true, //유저가 반드시 탭버튼을 눌러야함
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('수정 or 삭제'),
          content: Text("뒤로가기를 원하면 아무 화면이나 터치"),
          actions: <Widget>[
            FlatButton(
              child: Text('수정하기'),
              onPressed: () {
                Navigator.pop(context, "OK");
              },
            ),
            FlatButton(
              child: Text('삭제하기'),
              onPressed: () {
                Navigator.pop(context, "Cancel");
              },
            ),
          ],
        );
      },
    );
  }
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.deepPurple,
//         ),
//         // initialRoute 설정. home이 아닌 초기 라우트로 설정
//         // '/'은 앱의 첫 라우트(root 라우트)를 의미함
//         initialRoute: '/',
//         //라우트들을 등록
//         routes: {
//           '/': (context) => NameListPage(), //초기 라우트로 NameListPage설정
//           '/second': (context) => SecondPage(), //'/second'란 경로로 secondPage설정
//           '/third': (context) => MemoPage(), // '/third'라는 경로로 MemoPage설정
//         });
//   }
// }
