import 'package:flutter/material.dart';

Widget gambar1(){
  return Container(
    width: 150,
    height: 150,
    margin: const EdgeInsets.fromLTRB(10, 20, 5, 20),
    decoration:  BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 5,
      ),
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage("assets/arknight.png"),
        ),
    ),
  );
}

Widget gambar2(){
  return Container(
    width: 150,
    height: 150,
    margin: const EdgeInsets.fromLTRB(10, 20, 5, 20),
    decoration:  BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 5,
      ),
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage("assets/Genshin.png"),
        ),
    ),
  );
}

Widget gambar3(){
  return Container(
    width: 150,
    height: 150,
    margin: const EdgeInsets.fromLTRB(10, 20, 5, 20),
    decoration:  BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 5,
      ),
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage("assets/ml.png"),
        ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Raymond Jonathan Damanik",
        style: TextStyle(
          color:Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: const Text("Kitsu TOP UP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Comic',
                    color: Colors.black,  
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: const Text("List Game : ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Comic',
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 100),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        gambar1(),
                        gambar2(),
                        gambar3(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 70,
              height: 55,
              margin: const EdgeInsets.only(top: 10, bottom: 30, left: 40, right: 40),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "PILIH GAME",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}