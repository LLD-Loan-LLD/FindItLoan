
import 'package:flutter/material.dart';
import 'views/favoris.dart';
import 'views/home_view.dart';
import 'views/message.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("FindIt"),
      ),
      body: PageView(
        controller: _pageController,
        children: const <Widget> [
          HomeView(),
          ProfiluserView(),
          Search(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState((){
            _currentIndex = index;
          });

          _pageController.jumpToPage(_currentIndex);
        },

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: ''

          ), 
        ],
      ),
    );
  }
}

class MyTopBar extends StatelessWidget {
  const MyTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length:3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Top Navigation"),
          bottom: const TabBar(
            tabs: [
              Tab(
              icon: Icon(Icons.add_circle),
              text: 'Add',
              ),
              Tab(
              icon: Icon(Icons.accessibility),
              text: 'Person',
              ),
            ],
          ),
        ),
      body: const TabBarView(
        children: [

        ],

      ),

      ),
    );

  }
}





