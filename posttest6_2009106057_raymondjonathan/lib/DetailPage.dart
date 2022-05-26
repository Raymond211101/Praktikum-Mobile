import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:posttest6_2009106057_raymondjonathan/TextController.dart';
import 'package:get/get.dart';
import 'Hasil.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String gambar;
  final String desc;

  DetailPage(
      {Key? key, required this.title, required this.gambar, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tc = Get.put(textcontroller());
    return Scaffold(
      backgroundColor: Color(0xFFFF280031),
      body: ListView(children: [
        Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(gambar), fit: BoxFit.fill))),
        SizedBox(height: 40),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(title,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(width: 60),
          ],
        ),
        SizedBox(height: 10),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              (desc),
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.justify,
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
                controller: tc.USER,
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
        SizedBox(
          height: 30,
        ),
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
                controller: tc.TOP,
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
        SizedBox(
          height: 30,
        ),
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
                controller: tc.EMAIL,
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
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 120),
          child: ElevatedButton(
            onPressed: () {
              Get.snackbar(
                "Berhasil",
                "Data Berhasil Di Submit",
                icon: Icon(Icons.person, color: Colors.white),
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Color(0xFFFF280031),
                borderRadius: 20,
                margin: EdgeInsets.all(15),
                colorText: Colors.white,
                duration: Duration(seconds: 4),
              );
              tc.pembayaran(20);
            },
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFF0AA1DD), shape: StadiumBorder()),
            child: Text(
              "Submit",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: OutlinedButton(
              onPressed: () => Get.to(Hasil()),
              child: Text(
                "Tekan Untuk Melanjutkan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )),
        ),
      ]),
    );
  }
}
