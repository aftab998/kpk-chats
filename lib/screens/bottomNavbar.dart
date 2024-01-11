import 'package:bharat_chat/screens/addPost.dart';
import 'package:bharat_chat/screens/home.dart';
import 'package:bharat_chat/screens/message.dart';
import 'package:bharat_chat/screens/profile/profile.dart';
import 'package:bharat_chat/screens/search.dart';
import 'package:bharat_chat/screens/video.dart';
import 'package:flutter/material.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      home(),
      search(),
      addPost(),
      video(),
      Message(),
    ];
    final _kBottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
      BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
      BottomNavigationBarItem(icon: Icon(Icons.pause), label: 'play'),
      BottomNavigationBarItem(icon: Icon(Icons.message), label: 'chat'),
    ];
    assert(_kTabPages.length == _kBottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottomNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "KpK chat",
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,
              fontStyle: FontStyle.italic),
        ),
        actions: [
          IconButton(
              onPressed: () {
                
              },
              icon: const Icon(
                Icons.notifications_active_outlined,
                size: 30,
              )),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(15)),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
