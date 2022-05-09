import "package:flutter/material.dart";

class MainPageMain extends StatefulWidget {
  @override
  _MainPageMainState createState() => _MainPageMainState();
}

class _MainPageMainState extends State<MainPageMain> {
  PageController _pageController = PageController();
  List<Widget> _screens = [];
  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search,
                  color: _selectedIndex == 0 ? Colors.orange : Colors.grey),
              title: Text("Ürünler",
                  style: TextStyle(
                      color:
                          _selectedIndex == 0 ? Colors.orange : Colors.grey))),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,
                  color: _selectedIndex == 1 ? Colors.orange : Colors.grey),
              title: Text("Sepet",
                  style: TextStyle(
                      color:
                          _selectedIndex == 1 ? Colors.orange : Colors.grey))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,
                  color: _selectedIndex == 2 ? Colors.orange : Colors.grey),
              title: Text("Profil",
                  style: TextStyle(
                      color:
                          _selectedIndex == 2 ? Colors.orange : Colors.grey))),
        ],
      ),*/
    );
  }
}
