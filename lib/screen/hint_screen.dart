import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HintScreen extends StatefulWidget {
  const HintScreen({Key? key}) : super(key: key);

  @override
  State<HintScreen> createState() => _HintScreenState();
}

class _HintScreenState extends State<HintScreen> {
  // firebase
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // textField
  final textEditingControlle = TextEditingController();



  @override
  Widget build(BuildContext context) {
    Future<Map<String, dynamic>?> getData(String code) async{
      final decodeCol = FirebaseFirestore.instance.collection("decode").doc('$code');
      final data = await decodeCol.get().then((value){
        return value.data();
      });

      return data;
    };


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
                onPressed: () async {
                  String type = 'text';
                  String content = '존재하지 않는 암호입니다.';
                  if(getData(textEditingControlle.text) != null){
                    Map<String, dynamic>? data = await getData(textEditingControlle.text) ;

                    if(data != null){
                      print("뭐여");

                      type = data['type'];
                      content = data['content'];

                      print('$type $content');
                    }
                  }

                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content: type=='text' ? Text(content!): Image.asset(content));
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
