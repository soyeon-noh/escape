import 'package:escape/layout/main_layout.dart';
import 'package:flutter/material.dart';

class MemoScreen extends StatelessWidget {
  const MemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container()),
        Container(
          color: Colors.grey[700],
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _colorWidget(Colors.black),
                    _colorWidget(Colors.red),
                    _colorWidget(Colors.yellow),
                    _colorWidget(Colors.green),
                    _colorWidget(Colors.blue),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      child: Slider(
                          activeColor: Colors.white,
                          inactiveColor: Colors.white,
                          value: 3,
                          onChanged: (size) {

                          },
                          min: 3,
                          max: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Text(
                      '지우개',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _colorWidget(Color color) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
