import 'package:flutter/material.dart';

class HintScreen extends StatefulWidget {
  const HintScreen({Key? key}) : super(key: key);

  @override
  State<HintScreen> createState() => _HintScreenState();
}

class _HintScreenState extends State<HintScreen> {
  final textEditingControlle = TextEditingController();

  List<Map> codeMapList = [
    {
      'code': 'FF001',
      'type': 'text',
      'content': '날 사랑하는 만큼 악기를 선물해 준다고 했죠. 매일 밤 하나씩 세본답니다. 당신의 마음이 어느정도인지.',
    },
    {
      'code': 'FF002',
      'type': 'text',
      'content': '당신의 말은 다 거짓말이었어요. 내 마음이 담긴 꽃다발의 꽃을 하나씩 꺾으면서 매일 밤 잠에 듭니다.'
    },
    {
      'code': 'FF003',
      'type': 'image',
      'content': '물고기 + 악기와 꽃다발',
    },
    {
      'code': 'SF001',
      'type': 'image',
      'content': 'musicBox.png',
    },
    {
      'code': '',
      'type': '',
      'content': '',
    },
    {
      'code': '',
      'type': '',
      'content': '',
    },
    {
      'code': '',
      'type': '',
      'content': '',
    },
    {
      'code': '',
      'type': '',
      'content': '',
    },
    {
      'code': '',
      'type': '',
      'content': '',
    },
    {
      'code': '',
      'type': '',
      'content': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/img/ancient.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                '암호 입력',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: TextField(
                controller: textEditingControlle,
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(0, 0, 0, 0.4),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  String code;
                  String type = 'text';
                  String? content = '잘못된 코드입니다.';
                  for (Map codeMap in codeMapList){
                    type = codeMap['type'];

                    if(codeMap['code'] == textEditingControlle.text){
                      content = codeMap['content'];
                      break;
                    }
                    print('$type $content');
                  }
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content: Text(content!));
                      });
                },
                child: Text(
                  '확인',
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: EdgeInsets.symmetric(vertical: 8.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
