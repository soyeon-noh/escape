import 'package:escape/layout/main_layout.dart';
import 'package:flutter/material.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/img/paper.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 8.0),
                child: Center(
                  child: Text('사용 설명서', style: TextStyle(fontSize: 20.0),),
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 봄 - 겨울'),
                    Text('2. 여름 + 겨울'),
                    Text('3. 가을 * 가을'),
                    Text('4. 겨울 / 여름'),
                    Text('5. 봄 % 봄'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 혼자 누울 수 있는 침대는 편안하다.'),
                    Text('2. 둘이서 누울 수 있는 침대는 졸리다.'),
                    Text('3. 셋이서 누울 수 있는 침대는 위험하다.'),
                    Text('4. 넷이서 누울 수 있는 침대는 살펴봐라.'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. O + T = 3'),
                    Text('2. T + T = 5'),
                    Text('3. F + T = 7'),
                    Text('4. N + O = 10'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 초록색은 안전하다'),
                    Text('2. 파란색 중에 하얀색이 있으면 파란색을 조심해라'),
                    Text('3. 붉은색과 노란색과 하얀색이 있으면 안전하다.'),
                    Text('4. 붉은색만 있으면 위험하다.'),
                    Text('5. 하얀색과 붉은색이 있으면 붉은색을 살펴봐라.'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 혼자 있으면 외롭다.'),
                    Text('2. 풀어있는 것을 가두지 마라.'),
                    Text('3. 함부로 만지지 마라.'),
                    Text('4. 갇혀있는 것은 풀어줘라.'),
                    Text('5. 먹이를 줘도 된다. 먹이는 서랍에 있다.'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 51 - 1 = 430'),
                    Text('2. 61 - 1 = 531'),
                    Text('3. 71 - 1 = 630'),
                    Text('4. 81 - 1 = 731'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 고마운 마음 + 슬픈 마음'),
                    Text('2. 사랑하는 마음 - 배신당한 마음'),
                    Text('3. 화난 마음 * 비겁한 마음'),
                    Text('4. 즐거운 마음 / 행복한 마음'),
                    Text('5. 설레는 마음 % 답답한 마음'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 금은 해답을 품고 있다.'),
                    Text('2. 은은 진실을 품고 있다.'),
                    Text('3. 동은 거짓을 품고 있다.'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 다섯개 중에 왼쪽에서 첫 번째는 뜨겁다.'),
                    Text('2. 다섯개 중에 왼쪽에서 두 번째는 타오른다.'),
                    Text('3. 다섯개 중에 왼쪽에서 세 번째는 위험하다.'),
                    Text('4. 다섯개 중에 왼쪽에서 네 번째는 따뜻하다.'),
                    Text('5. 다섯개 중에 왼쪽에서 다섯 번재는 조심해라.'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 와인잔과 양파는 개수가 중요하다.'),
                    Text('2. 꽃다발과 선물은 마음이 중요하다.'),
                    Text('3. 화분과 하늘은 색이 중요하다.'),
                    Text('4. 오르골과 전등은 순서가 중요하다.'),
                    Text('5. 열쇠와 자물쇠는 짝이 중요하다.'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 푸른 나비는 함부로 건네주지 말아라.'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 네 개는 죽음을 뜻한다.'),
                    Text('2. 가려는 곳을 알리자.'),
                    Text('3. 위기는 기회로 바꾸자.'),
                    Text('4. 험한 곳은 가지마라.'),
                    Text('5. 해가 뜬 곳을 살펴봐라.'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. ㄴㄷㅑ'),
                    Text('2. ㅡㅏㅎ'),
                    Text('3. ㅣㅋㅕ'),
                    Text('4. ㅇㅜㅐ'),
                    Text('5. ㄱㅋㅌ'),
                  ],
                ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}

class _ContainerePart extends StatelessWidget {
  Widget column;

  _ContainerePart({
    required this.column,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
      ),
      child: column,
    );
  }
}
