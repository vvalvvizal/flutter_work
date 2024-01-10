import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), (){
      //2초 뒤에 화면이동
      Navigator.pushNamed(context, '/main');
      //메인으로 이동
      //햄버거처럼 위에 쌓는거

    },);
    return Scaffold(
      body: Center(
        child: Text('시작화면 입니다'),
      ),
    );
  }
}
