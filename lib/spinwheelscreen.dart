import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);

  @override
  _SpinWheelState createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  int selected = 0; //hitungan selected dimulai dari 0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff393E46),
        title: Center(child: Text("Food Spinner Choice")), //judul apk
      ),
      body: Column( //membuat Properti menjadi center
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 500, //besar/tinggi lingkaran spinner
            child: FortuneWheel(
              animateFirst: false, //false karna belum ada tindakan 
              selected: selected,
              physics: CircularPanPhysics(
                duration: Duration(seconds: 3), //durasi putaran spinner
                curve: Curves.decelerate,
              ),
              onFling: () {
                setState(() { //memanggil selected agar adanya perubahan data
                  selected = Random().nextInt(0);
                });
              },
              styleStrategy: UniformStyleStrategy(
                borderColor: Colors.blueGrey[300],
                color: Colors.blueGrey[100],
                borderWidth: 2,//stroke pada tiap nama food
              ),
              items: [//widger fortune mencakup spinner/roda berputar
                FortuneItem( //items yg akna muncul di roda spinner
                    child: Text(
                  "Bakso",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "Nasi Goreng",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "Mie Ayam",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "Sate Ayam",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "Soto",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "Gado Gado",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "PemPek",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "Siomay",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "Pecal Ayam",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "Rendang",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "Gudeg",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                FortuneItem(
                    child: Text(
                  "Nasi Kucing",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
              onAnimationEnd: () { //muncul pesan di debug jika sudah terpilih
                print("value : " + "$selected}");
              },
            ),
          ),
          GestureDetector(//widget untuk mendeteksi geratran
            onTap: () {
              setState(() {
                selected = Random().nextInt(4);
              });
            },
            child: Container( //ada button di sini, lalu jika ditekat makan akan menggerakan spinnernya
              color: Color(0xff393E46),
              height: 40,
              width: 150,
              child: Center(
                child: Text(
                  "Putar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
