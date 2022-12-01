import 'package:escape/layout/main_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'asset/img/main.png',
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                WhiteText(
                  text: '안내 사항',
                  size: 20.0,
                ),
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.star_border_rounded,
                  color: Colors.white,
                ),
                WhiteText(
                  text: '1. 어플 이름을 유출하지 말아주세요.',
                ),
                WhiteText(
                  text: '2. 암호코드와 해독한 결과, 문서를 유출하지 말아주세요.',
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
                WhiteText(
                  text: '1. 지정된 장소를 벗어나지 말아주세요.',
                ),
                WhiteText(
                  text: '2. 외치기 사용이 금지됩니다.',
                ),
                WhiteText(
                  text:
                      '3. \'암호 해독\'의 입력칸에 \n저택 내부에서 발견되는 \'암호 코드\'를 입력하고 확인 버튼을 눌러주세요.',
                ),
                WhiteText(
                  text:
                      '3. \'문서\'는 조사, 문제 해결에 도움이 되는 정보들입니다. \n 외부 인원들에게 최대한 알립니다. \n거짓은 존재하지 않습니다.',
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
                WhiteText(
                  text: '1. (중요) 저택 내부 인원과 협력을 해야합니다.',
                ),
                WhiteText(text: '2. 최대한 정보를 제공하고 바깥상황을 파악해주세요.'),
                WhiteText(text: '3. 혼자 해결할 필요도 없고 가능하지도 않습니다.'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '4. 당신이 사망할 가능성이 있습니다.',
                    style: TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
                WhiteText(text: '5. 이에 문제가 없으신 분들만 진행해주세요.'),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}

class WhiteText extends StatelessWidget {
  String text;
  double? size;
  WhiteText({
    required this.text,
    this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: size),
        textAlign: TextAlign.center,
      ),
    );
  }
}
