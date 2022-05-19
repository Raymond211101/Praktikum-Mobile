import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }

  bool currentlyPlaying = false;

  SnackBar favorite() {
    return SnackBar(
      backgroundColor: Color(0xFFFF36213d),
      content: currentlyPlaying
          ? Text('Favorite Ditambahkan!!')
          : Text('Favorite Dihapus!!'),
      elevation: 30,
      action: SnackBarAction(
        label: 'Dismiss',
        onPressed: () {
          ScaffoldMessenger.of(context)..removeCurrentSnackBar();
        },
      ),
    );
  }

  void _iconTapped() {
    if (currentlyPlaying == false) {
      currentlyPlaying = true;
      _animationController.forward();
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(favorite());
    } else {
      currentlyPlaying = false;
      _animationController.reverse();
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(favorite());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF280031),
      body: ListView(children: [
        Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/CoverML.jpg'),
                    fit: BoxFit.cover))),
        SizedBox(height: 40),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: const Text("Mobile Legends",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(width: 60),
            GestureDetector(
              onTap: _iconTapped,
              child: Lottie.network(
                  'https://assets1.lottiefiles.com/datafiles/DYSJrjDDW4wj0wwvpnnOgcH9WvBwfDnIZh39QjOq/Love/data.json',
                  width: 50,
                  height: 35,
                  controller: _animationController),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Top up ML Diamond hanya dalam hitungan detik! Cukup masukan Username MLBB Anda, pilih jumlah Diamond yang Anda inginkan, selesaikan pembayaran, dan Diamond akan secara langsung ditambahkan ke akun Mobile Legends Anda.",
              style: TextStyle(color: Colors.white),
            )),
        SizedBox(height: 50),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Masukkan User ID",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Ex: 12345678 (1234)',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              
              
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Masukkan Nominal TOP-UP",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Ex: 230',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              
              
            ],
          ),
        ),
         SizedBox(height: 30,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text("Masukkan Email",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Ex: raymond@gmail.com',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              
              
            ],
          ),
        ),
         SizedBox(height: 30,),

      ]),
    );
  }
}
