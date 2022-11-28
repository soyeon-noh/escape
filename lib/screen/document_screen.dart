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
                    Text('1. 내용'),
                    Text('2. 내용'),
                    Text('3. 내용'),
                    Text('4. 내용'),
                    Text('5. 내용'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 내용'),
                    Text('2. 내용'),
                    Text('3. 내용'),
                    Text('4. 내용'),
                    Text('5. 내용'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 내용'),
                    Text('2. 내용'),
                    Text('3. 내용'),
                    Text('4. 내용'),
                    Text('5. 내용'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 내용'),
                    Text('2. 내용'),
                    Text('3. 내용'),
                    Text('4. 내용'),
                    Text('5. 내용'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 내용'),
                    Text('2. 내용'),
                    Text('3. 내용'),
                    Text('4. 내용'),
                    Text('5. 내용'),
                  ],
                ),
              ),
              _ContainerePart(
                column: Column(
                  children: [
                    Text('1. 내용'),
                    Text('2. 내용'),
                    Text('3. 내용'),
                    Text('4. 내용'),
                    Text('5. 내용'),
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
