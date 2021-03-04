import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

final dummyItems = [
  Image.asset('images/img001.jpeg'),
  Image.asset('images/img002.jpeg'),
  Image.asset('images/img003.jpeg'),
  Image.asset('images/img004.jpeg'),
  Image.asset('images/img005.jpeg'),
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0; //페이지 인덱스 0,1,2
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '복잡한 UI',
          style: TextStyle(color: Colors.black), // 글자색 변경
        ),
        centerTitle: true, //   제목 가운데로 변경
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index; //선택된 탭의 인덱스로 _index를 변경
          });
        },
        currentIndex: _index, //선택된 인덱스
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('홈'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('이용서비스'),
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            title: Text('내 정보'),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

//상단
  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시'),
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('버스'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('블랙'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('대리'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('버스'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('블랙'),
                ],
              ),
              Opacity(
                opacity: 0.0, //투명
                child: Column(
                  //두번째 row의 마지막
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('대리'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

//중단
  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(height: 350.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      '이용서비스', //이부분의 글자만 다르게 작성
      style: TextStyle(fontSize: 40),
    ));
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      '내 정보', //이부분의 글자만 다르게 작성
      style: TextStyle(fontSize: 40),
    ));
  }
}

/**7.6 생산성을 높여주는 단축키 예제*/
// class Page4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Text(
//       '내 정보', //이부분의 글자만 다르게 작성
//       style: TextStyle(fontSize: 40),
//     ));
/**Remove this widget을 하면 아래 처럼 center가 벗겨진다*/
//     return Text(
//       '내 정보', //이부분의 글자만 다르게 작성
//       style: TextStyle(fontSize: 40),
//     );
//   }
// }
