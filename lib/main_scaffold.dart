import 'package:flutter/material.dart';

import 'HistoryScreen/history_page.dart';
import 'ProfileScreen/profile_page.dart';
import 'PublishScreen/publish_page.dart';
import 'SearchScreen/search_page.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _selectedIndex = 0;
  int? checkCallback = 0;
  String? title;
  IconData? icon;
  Color customColor = Color.fromRGBO(250, 250, 250, 0.9);

  void _onSearchPressed() async {
    setState(() {
      checkCallback = 1;
      customColor = Colors.blue;
      title = 'Leaving From';
      icon = Icons.arrow_circle_left_outlined;
    });

    await showModalBottomSheet(
      context: context,
      isScrollControlled:
          true, // Allow the bottom sheet to take up the full screen
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.84, // 90% of screen height
          maxChildSize: 1.0, // Full screen
          minChildSize: 0.25, // Minimum height when collapsed
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                height:
                    MediaQuery.of(context).size.height * 0.5, // Adjust height
                child: const Center(
                  child: Text("This is the bottom sheet"),
                ),
              ),
            );
          },
        );
      },
    );

    setState(() {
      customColor = Color.fromRGBO(250, 250, 250, 0.9);
      title = '';
      checkCallback = 0;
    });
  }

  void _onSearchPressed2() async {
    checkCallback = 2;
    setState(() {
      customColor = Colors.blue;
      title = 'Going To';
      icon = Icons.arrow_circle_left_outlined;
    });

    await showModalBottomSheet(
      context: context,
      isScrollControlled:
          true, // Allow the bottom sheet to take up the full screen
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.84, // 90% of screen height
          maxChildSize: 1.0, // Full screen
          minChildSize: 0.25, // Minimum height when collapsed
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                height:
                    MediaQuery.of(context).size.height * 0.5, // Adjust height
                child: const Center(
                  child: Text("This is the bottom sheet"),
                ),
              ),
            );
          },
        );
      },
    );

    setState(() {
      customColor = Color.fromRGBO(250, 250, 250, 0.9);
      title = '';
      checkCallback = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List screens = [
      SearchPage(
        onSearchPressed: _onSearchPressed,
        onSearchPressed2: _onSearchPressed2,
      ),
      PublishPage(),
      HistoryPage(),
      ProfilePage(),
    ];
    return Scaffold(
      backgroundColor: customColor,
      resizeToAvoidBottomInset: true,
      appBar: _selectedIndex == 2
          ? null
          : AppBar(
              toolbarHeight: 120,
              elevation: checkCallback == 1 ? 10 : 0,
              // backgroundColor: customColor,
              backgroundColor: Colors.white70,
              leadingWidth: 100,
              title: checkCallback == 1
                  ? const Text('Leaving From')
                  : checkCallback == 2
                      ? const Text('Going To')
                      : null,
              leading: customColor == Colors.blue
                  ? Icon(icon)
                  : Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset(
                        'assets/icons/logo_icon.jpg',
                      ),
                    ),
            ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          _selectedIndex = index;
        }),
        currentIndex: _selectedIndex,
        elevation: 0,
        backgroundColor: Colors.white38,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Publish',
            icon: Icon(Icons.add_box_outlined),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
      body: screens[_selectedIndex],
    );
  }
}
