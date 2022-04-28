import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posttest4_2009106057_raymondjonathandamanik/arknight.dart';
import 'package:posttest4_2009106057_raymondjonathandamanik/genshin.dart';
import 'package:posttest4_2009106057_raymondjonathandamanik/main.dart';
import 'package:posttest4_2009106057_raymondjonathandamanik/landpage.dart';
import 'package:posttest4_2009106057_raymondjonathandamanik/mobile.dart';

class homepage extends StatelessWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("KITSU TOP UP"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(top: 70),
              decoration: const BoxDecoration(
                image: 
                DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/ark.jpg")
                  ,)
              ),
              child: Text("List Game",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.black
              ),
              child: ListTile(
                title: Text("Mobile Legend",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => mobile(),
                      ),
                    );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.black
              ),
              child: ListTile(
                title: Text("Arknight",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => arknight(),
                      ),
                    );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.black
              ),
              child: ListTile(
                title: Text("Genshin Impact",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => genshin(),
                      ),
                    );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.black
              ),
              child: ListTile(
                title: Text("Balik Ke Awal",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => landpage(),
                      ),
                    );
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/zhongli.jpg"),
          ),
        ),
        padding: EdgeInsets.only(top: 50),
        child: const Text("Welcome Bang",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w900,
        ),
        ),
      ),
    );
  }
}