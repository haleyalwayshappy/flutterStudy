import 'package:flutter/material.dart';

import 'memopage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('학생이름'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.navigate_next),
            color: Colors.white,
            iconSize: 40.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => (MemoPage()), //2번째 페이지로 이동하는 코드
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ListTile(
            title: Text('1.커리큘럼'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {}, //클릭시 실선이 생기도록
            onLongPress: () {},
          ),
          ListTile(
            title: Text('2.커리큘럼'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            title: Text('3.커리큘럼'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            title: Text('4.커리큘럼'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
        ],
      ), //주로 body에 코드를 쓴다
    );
  }
}
