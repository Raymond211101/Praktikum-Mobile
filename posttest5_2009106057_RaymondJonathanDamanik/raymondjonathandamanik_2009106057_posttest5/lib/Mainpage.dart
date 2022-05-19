import 'package:bottom_bar/bottom_bar.dart';

import 'package:flutter/material.dart';

import 'DetailPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Stack Content(String gambar, String judul) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 200,
          width: 120,
        ),
        Container(
            height: 120,
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                image: DecorationImage(
                    image: AssetImage(gambar), fit: BoxFit.fill))),
        Positioned(
          bottom: 0,
          child: Container(
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                  color: Color(0xFFFF36213d),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                  child: Text(judul,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)))),
        )
      ],
    );
  }

  ListView Main() {
    return ListView(children: [
      SizedBox(height: 100),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: const Text("POPULAR",
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      SizedBox(height: 20),
      Container(
        height: 210,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return DetailPage();
                  }));
                },
                child: Content("asset/MobileLegend.png", "Mobile Legend")),
            Content("asset/Apex.png", "Apex Legend"),
            Content("asset/FreeFire.png", "Free Fire"),
            Content("asset/Valorant.jpg", "Valorant"),
          ],
        ),
      ),
      SizedBox(height: 40),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: const Text("New Titles",
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      SizedBox(height: 20),
      Container(
        height: 210,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Content("asset/IYI.png", "IQIYI"),
            Content("asset/Thenan.png", "Thenan Arena"),
            Content("asset/Sus.png", "Super Sus"),
            Content("asset/Sausage.png", "Sausage Man"),
          ],
        ),
      ),
    ]);
  }

  final _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF280031),
      body: PageView(
        controller: _pageController,
        children: [
          Main(),
          Center(
              child: Container(
            color: Colors.greenAccent.shade700,
            child: Text(
              "Coming Soon",
              style: TextStyle(fontSize: 25),
            ),
          )),
          Center(
              child: Container(
            color: Colors.greenAccent.shade700,
            child: Text(
              "Coming Soon",
              style: TextStyle(fontSize: 25),
            ),
          )),
          Center(
              child: Container(
            color: Colors.greenAccent.shade700,
            child: Text(
              "Coming Soon",
              style: TextStyle(fontSize: 25),
            ),
          )),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _selectedIndex = index);
        },
      ),
      // ignore: missing_required_param
      bottomNavigationBar: BottomBar(
        selectedIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _pageController.jumpToPage(index);
            _selectedIndex = index;
          });
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400, // Optional
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400, // Optional
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
