import 'package:flutter/material.dart';
import 'package:smart_news/Screens/Bottomnavmenu/BookmarkFragment.dart';
import 'package:smart_news/Screens/Bottomnavmenu/CategoryFragment.dart';
import 'package:smart_news/Screens/Bottomnavmenu/HomeFragment.dart';
import 'package:smart_news/Screens/Bottomnavmenu/ProfileFragment.dart';
import 'package:smart_news/Screens/Bottomnavmenu/SearchFragment.dart';
import 'package:smart_news/Themes/colors.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int selectedIndex = 0;
  List<Widget> pages = [
    HomeFragment(),
    BookmarkFragment(),
    CategoryFragment(),
    SearchFragment(),
    ProfileFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (index){
          selectedIndex = index;
          // คำสั่งในการ render ui
          setState(() {
            
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child:  Icon(Icons.home, size: 30,),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
            activeIcon: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child:  Icon(Icons.home, size: 30,),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
            activeIcon: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child:  Icon(Icons.home, size: 30,),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            activeIcon: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child:  Icon(Icons.home, size: 30,),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            activeIcon: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child:  Icon(Icons.home, size: 30,),
            )
          ),
        ],
      ),
      body: SafeArea(
        child: pages[selectedIndex],
      )
    );
  }
}