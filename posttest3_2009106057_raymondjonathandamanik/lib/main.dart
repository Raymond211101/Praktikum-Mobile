import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

enum Game {Mobile, Arknight, Genshin}

class MyHomePage  extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Game game = Game.Mobile;

  String userID = "", nama ="",email ="",topup="";

  final controlleruserID = TextEditingController();
  final controllernama = TextEditingController();
  final controlleremail = TextEditingController();
  final controllertopop = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC9D6DF),
      appBar: AppBar(
        title: Text("Raymond Jonathan Damanik"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top:30),
            alignment: Alignment.center,
            child: Text("KITSU TOP UP",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),)),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFBAD7DF),
                  border: Border.all(width : 4,color: Color(0xFFFFF3490DE),),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: (Text("Mobile Legend")),
                      leading: Radio(
                        groupValue: game,
                        value: Game.Mobile,
                        onChanged: (Game? value){
                          setState(() {
                            game =  value?? Game.Mobile;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: (Text("Arknight")),
                      leading: Radio(
                        groupValue: game,
                        value: Game.Arknight,
                        onChanged: (Game? value){
                          setState(() {
                            game = value ?? Game.Mobile;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: (Text("Genshin Impact")),
                      leading: Radio(
                        groupValue: game,
                        value: Game.Genshin,
                        onChanged: (Game? value){
                          setState(() {
                            game = value ?? Game.Mobile;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xFFFFBAD7DF),
                margin: EdgeInsets.only(left: 15,right: 15),
                child: TextField(
                controller: controlleruserID,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Masukkan User ID",
                  labelText: "User ID",
                ),
            ),
              ),
            SizedBox(
              height: 30,
            ),
              Container(
                color: Color(0xFFFFBAD7DF),
                margin: EdgeInsets.only(left: 15,right: 15),
                child: TextField(
                controller: controllernama,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Masukkan Nama",
                  labelText: "Nama",
                ),
            ),
              ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Color(0xFFFFBAD7DF),
              margin: EdgeInsets.only(left: 15,right: 15),
              child: TextField(
                controller: controllertopop,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Mau TOP UP Berapa ?",
                  labelText: "TOP UP",
                  ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
              Container(
                color: Color(0xFFFFBAD7DF),
                margin: EdgeInsets.only(left: 15,right: 15),
                child: TextField(
                controller: controlleremail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Masukkan Email",
                  labelText: "Email",
                ),
            ),
              ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  userID = controlleruserID.text;
                  nama = controllernama.text;
                  topup = controllertopop.text;
                  email = controlleremail.text;
                });
              },
              child: Text("Tampil"),
            ),
            ],
          ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFBAD7DF),
                  border: Border.all(width: 4),
                ),
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(""),
                    Text("User ID : $userID",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                    Text("Nama Pembeli : $nama",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                    Text("Jumlah TOP UP : $topup",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                    Text("Email : $email", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                    Text("Game : $game",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}