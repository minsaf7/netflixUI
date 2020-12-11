import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

int index = 0;

Widget show(int index) {
  switch (index) {
    case 0:
      return netflixHome();
      break;
    case 1:
      return netflixSearch();
      break;
    case 2:
      return netflixDownload();
      break;
    case 3:
      return netflixMore();
      break;
  }
}

Widget netflixHome() {}

Widget netflixSearch() {}

Widget netflixDownload() {}

Widget netflixMore() {}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: show(index),
      backgroundColor: Color(0xFF221f1f),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int x) {
          setState(() {
            index = x;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Color(0xFF221f1f),
              // backgroundColor: Colors.black,
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              // backgroundColor: Colors.black,
              backgroundColor: Color(0xFF221f1f),
              title: Text(
                "Search",
                style: TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download),
              //backgroundColor: Colors.black,
              backgroundColor: Color(0xFF221f1f),
              title: Text(
                "Download",
                style: TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              //  backgroundColor: Colors.black,
              backgroundColor: Color(0xFF221f1f),
              title: Text(
                "Moew",
                style: TextStyle(color: Colors.white),
              ))
        ],
        backgroundColor: Colors.black87,
      ),
    );
  }
}
