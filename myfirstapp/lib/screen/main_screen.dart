import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인화면'),
      ),
      body: Column(
        //const로 하면 컴파일 단계에서 미리 위젯 생성을 해놓음
        //실제 앱 퍼포먼스에 영향을 미침
        //Column은 세로로 위젯을 쌓아서 정렬하는 위젯
        mainAxisAlignment: MainAxisAlignment.center, //Column에서 메인축 세로
        //MainAxisAlignment.end 메인축 맨 하단에
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //세로 정렬
          Text('반갑습니다'),
          Text('저는 말미잘입니다.'),
          Text('귀엽습니다'),
          //Row는 가로로 위젯을 쌓아서 정렬하는 위젯
          Row(
            //Row는 메인축이 가로
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('안녕'),
              Text('반가워'),
              Text('이건 가로방향으로 쌓는 위젯'),
            ],
          ),
          Row(
            children: [
              Expanded(flex: 2, child: Text('신지훈')),
              Expanded(child: Text('신지훈')),
              Expanded(child: Text('신지훈')),
            ],
          ),
          Container(
            width: 300,
            height: 100,
            margin: EdgeInsets.all(32),
            //외부의 여백
            //EdgeInsets.only(left:16, right:0, top:0, bottom:0)
            padding: EdgeInsets.all(10),
            //내부의 여백
            alignment: Alignment.center,
            //container 기준으로 container의 child 정렬
            child: Text('말미잘'),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.blue),
          ),
          Text(
            '사이즈만 지정',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),

          Row(
            children: [
              Image.asset('assets/animal.png',width: 200,height: 200,),
              Icon(Icons.catching_pokemon, size: 100,)
            ],
          )

        ],
      ),
    );
  }
}
