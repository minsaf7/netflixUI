import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

int index = 0;

Widget show(int index) {
  return NetflixHome();
  // switch (index) {
  //   case 0:
  //     return netflixHome();
  //     break;
  //   case 1:
  //     return netflixSearch();
  //     break;
  //   case 2:
  //     return netflixDownload();
  //     break;
  //   case 3:
  //     return netflixMore();
  //     break;
  // }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: show(index),
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
                "More",
                style: TextStyle(color: Colors.white),
              ))
        ],
        backgroundColor: Colors.black87,
      ),
    );
  }
}

//Homescreen
class NetflixHome extends StatefulWidget {
  @override
  _NetflixHomeState createState() => _NetflixHomeState();
}

class _NetflixHomeState extends State<NetflixHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF221f1f),
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                child: Image(
                    image: NetworkImage(
                        'https://imageresizer.static9.net.au/u8vej4niCqfChLZIQZVuN5OoyPo=/396x0/https%3A%2F%2Fprod.static9.net.au%2Ffs%2Fab97f8bd-9966-4c8c-83e3-40f35d076423')),
              ),

//container for the image gradient
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Color(0xFF221f1f).withOpacity(0.0),
                          Color(0xFF221f1f)
                        ])),
              ),

              Positioned(
                  left: 10,
                  top: 30,
                  child: Container(
                    height: 70,
                    width: 100,
                    child: Image.network(
                        'https://cdn4.iconfinder.com/data/icons/social-media-logos-6/512/64-netflix-256.png'),
                  )),

              Positioned(
                  left: 100,
                  top: 55,
                  child: Text(
                    "Series",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),

              Positioned(
                  left: 200,
                  top: 55,
                  child: Text(
                    "Film",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
              Positioned(
                  left: 300,
                  top: 55,
                  child: Text(
                    "My List",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
            ],
          ),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(
                    child: Container(
                      color: Colors.white,
                      width: 80.0,
                      height: 30.0,
                      child: Center(
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                              ),
                              Text("Play")
                            ],
                          ),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(left: 75.0)),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      Text(
                        "Info",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              //  color: Colors.white,
              height: 20.0,
              child: Text(
                "Preview",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
              // color: Colors.white,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: CircleAvatar(
                              //backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg'),
                              radius: 60.0,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red),
                            ),
                          ),
                        ),
                        Container(
                          width: 20.0,
                        )
                      ],
                    );
                  })),
          Container(
              // color: Colors.white,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                              //padding: EdgeInsets.all(5.0),
                              height: 500.0,
                              width: 200.0,
                              //color: Colors.red,
                              child: Image.network(
                                  'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_UY1200_CR90,0,630,1200_AL_.jpg')),
                        ),
                        Container(
                          width: 20.0,
                        )
                      ],
                    );
                  }))
        ],
      ),
    );
  }
}
