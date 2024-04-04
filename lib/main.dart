import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '중고거래 앱',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey, // 배경색 변경
        elevation: 5, // 그림자 추가
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag), // 아이콘 추가
            SizedBox(width: 5), // 아이콘과 제목 사이 간격 조정
            Text('중고거래 앱'), // 제목 추가
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // 검색 기능 추가
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // 알림 기능 추가
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(), // 비어 있는 컨테이너로 홈 아이콘 위로의 공간을 확보합니다.
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 홈 아이콘
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5), // 텍스트 아래쪽 간격 조절
                      child: IconButton(
                        icon: Icon(Icons.home),
                        onPressed: () {
                          // 홈 화면으로 이동하는 코드 작성
                        },
                      ),
                    ),
                    Text('홈'),
                  ],
                ),
                // 메뉴 아이콘
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5), // 텍스트 아래쪽 간격 조절
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          // 메뉴 화면으로 이동하는 코드 작성
                        },
                      ),
                    ),
                    Text('메뉴'),
                  ],
                ),
                // 등록 아이콘
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5), // 텍스트 아래쪽 간격 조절
                      child: IconButton(
                        icon: Icon(Icons.add_circle),
                        onPressed: () {
                          // 등록 화면으로 이동하는 코드 작성
                        },
                      ),
                    ),
                    Text('등록'),
                  ],
                ),
                // 채팅 아이콘
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5), // 텍스트 아래쪽 간격 조절
                      child: IconButton(
                        icon: Icon(Icons.chat),
                        onPressed: () {
                          // 채팅 화면으로 이동하는 코드 작성
                        },
                      ),
                    ),
                    Text('채팅'),
                  ],
                ),
                // 내 정보 아이콘
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5), // 텍스트 아래쪽 간격 조절
                      child: IconButton(
                        icon: Icon(Icons.person),
                        onPressed: () {
                          // 내 정보 화면으로 이동하는 코드 작성
                        },
                      ),
                    ),
                    Text('내 정보'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
