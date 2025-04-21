// import 'package:flutter/material.dart';

// class BottomNavExample extends StatefulWidget {
//   @override
//   _BottomNavExampleState createState() => _BottomNavExampleState();
// }

// class _BottomNavExampleState extends State<BottomNavExample> {
//   int _selectedIndex = 1; // Shop is selected by default

//   static const List<Widget> _pages = <Widget>[
//     Center(child: Text('Home')),
//     Center(child: Text('Shop')),
//     Center(child: Text('Search')),
//     Center(child: Text('Profile')),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.black,
//         showUnselectedLabels: true,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.store), // You can replace with a custom icon
//             label: 'Shop',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Home')),
    Center(child: Text('Shop')),
    Center(child: Text('Search')),
    Center(child: Text('Profile')),
  ];

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 0 ? Colors.blue : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'assets/icons/home-2.png',
                height: 24,
                width: 24,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 1 ? Colors.blue : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'assets/icons/shop.png',
                height: 24,
                width: 24,
              ),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 2 ? Colors.blue : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'assets/icons/search.png',
                height: 24,
                width: 24,
              ),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 3 ? Colors.blue : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'assets/icons/person.png',
                height: 24,
                width: 24,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
