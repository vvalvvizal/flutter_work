import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  List lstHello = ['도연', '지훈', '보리', '몽실', '머핀'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인화면'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          //ListView 목록형 위젯
          //아이템 UI를 return문에 구성
          return ListTile(
            title: Text('${lstHello[index]}'),
            subtitle: Text('서브타이틀'),
          );
        },
        itemCount: lstHello.length /*ListView의 길이 지정*/,
      ),
    );
  }
}
