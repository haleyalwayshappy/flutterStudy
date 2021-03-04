import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music List'),
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
            title: Text('1.음악'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            title: Text('2.음악'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            title: Text('3.음악'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            title: Text('4.음악'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
        ],
      ), //주로 body에 코드를 쓴다
    );
  }
}
