import 'package:escape/screen/hint_screen.dart';
import 'package:escape/screen/home_screen.dart';
import 'package:escape/screen/document_screen.dart';
import 'package:escape/screen/memo_screen.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  MainLayout({
    Key? key,
  }) : super(key: key);


  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    HomeScreen(),
    MemoScreen(),
    HintScreen(),
    DocumentScreen(),
  ];


  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  final List<String> _titleList = [
    '홈','메모장', '힌트', '문서'
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(_titleList[_selectedIndex]),
        backgroundColor: Colors.brown[800],
        elevation: 0.0, // appBar 그림자 농도 설정 (값 0으로 제거)
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown[800],
        type: BottomNavigationBarType.fixed, // 이게 없으면 background 적용안됨 어째서..?
        items: [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: '메모장',
            icon: Icon(Icons.edit),
          ),
          BottomNavigationBarItem(
            label: '암호해독',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: '문서',
            icon: Icon(Icons.book_outlined),
          ),
        ],
        currentIndex: _selectedIndex,

        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        // selectedFontSize: 14,
        // unselectedFontSize: 14,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
