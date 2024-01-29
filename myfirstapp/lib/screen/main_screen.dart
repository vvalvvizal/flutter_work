import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  String msg = '이 곳에 입력값이 업데이트됩니다.';
  TextEditingController idController = TextEditingController();
  //TextField 컨트롤러

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인화면'),
      ),
      body: Column(
        children: [
          TextField(
            controller: idController,
            decoration: InputDecoration(labelText: '아이디를 입력해주세요'),
          ),
          ElevatedButton(
            onPressed: () {
              //클릭시 동작
              //setState 밖에서 업데이트도 가능, 전체 다시 빌드
              setState(() {
                //widget update
                //setState는 특정 위젯 별도로 업데이트
                msg = idController.text.toString();
              });
            },
            child: Text('아이디 입력 값 가져오기'),
          ),
          Text(
            msg,
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
