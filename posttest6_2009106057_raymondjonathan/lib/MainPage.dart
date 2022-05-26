import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106057_raymondjonathan/DetailPage.dart';
import 'package:posttest6_2009106057_raymondjonathan/TextController.dart';

class MainPage extends StatelessWidget {
  textcontroller tc = Get.put(textcontroller());

  MainPage({Key? key}) : super(key: key);
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
                  Get.to(DetailPage(
                    title: 'Mobile Legend',
                    gambar: "asset/CoverML.jpg",
                    desc:
                        "Top up ML Diamond hanya dalam hitungan detik! Cukup masukan Username MLBB Anda, pilih jumlah Diamond yang Anda inginkan, selesaikan pembayaran, dan Diamond akan secara langsung ditambahkan ke akun Mobile Legends Anda",
                  ));
                },
                child: Content("asset/MobileLegend.png", "Mobile Legend")),
            InkWell(
              onTap: () {
                Get.to(DetailPage(
                  title: 'Apex Legend',
                  gambar: "asset/CoverApex.jpg",
                  desc:
                      "Top up Apex Legends Mobile Syndicate Gold Pack hanya dalam hitungan detik! Cukup masukan ID Apex Legends Mobile Anda, pilih top up Apex Legends Mobile yang Anda inginkan, selesaikan pembayaran, dan top up akan secara langsung ditambahkan ke akun Apex Legends Mobile Anda.",
                ));
              },
              child: Content("asset/Apex.png", "Apex Legend"),
            ),
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
              tc.selectIndex(index);
            },
          ),
      // ignore: missing_required_param
      bottomNavigationBar: Obx(() => BottomBar(
            selectedIndex: tc.selectedIndex.value,
            onTap: (int index) {
              tc.selectIndex(index);
              _pageController.jumpToPage(tc.selectedIndex.value);
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
          )),
    );
  }
}
