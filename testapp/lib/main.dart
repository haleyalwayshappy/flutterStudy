import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',

    // initialRoute 설정. home이 아닌 초기 라우트로 설정
    // '/'은 앱의 첫 라우트(root 라우트)를 의미함
    initialRoute: '/',

    // 라우트들을 등록
    routes: {
      '/': (context) => FirstScreen(), // 초기 라우트로 FirstScreen을 설정
      '/second': (context) =>
          SecondScreen(), // '/second'란 경로로 SecondScrrent을 설정정
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch screen'),
          onPressed: () {
            // 라우트의 이름으로 새로운 라우트 적재
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // 현재 라우트를 pop(제거)
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
