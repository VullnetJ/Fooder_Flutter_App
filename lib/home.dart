
import 'package:flutter/material.dart';
import 'card2.dart';
import 'card1.dart';
import 'card3.dart';
import 'screens/explore_screen.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Todo Add state variables and functions
  // 7
  
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    //ExploreScreen(),
    
    // todo replace with card1
    const Card1(),
    // Container(color: Colors.red),
    //todo replace with card2
    const Card2(),
    // todo replace with card3
    const Card3(),
  ];

  // 9 
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooder 2',
          // 2
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      // todo show selected tab
      body: pages[_selectedIndex],


      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // todo set selected tab bar
        currentIndex: _selectedIndex,
        // 11
        onTap: _onItemTapped,
        // 6
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_sharp),
            label: 'Card1',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3'),
        ],
      ),
    );  
  }
}