import 'package:escape/layout/main_layout.dart';
import 'package:flutter/material.dart';

class HintScreen extends StatelessWidget {
  const HintScreen({Key? key}) : super(key: key);

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
                onPressed: () {},
                child: Text(
                  '확인',
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: EdgeInsets.symmetric(vertical: 8.0)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
