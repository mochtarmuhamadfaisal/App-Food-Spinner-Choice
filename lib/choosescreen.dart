import 'package:flutter/material.dart';
import 'package:food_spinner_choice_mochtar_m_faisal/spinwheelscreen.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(//membuat button menjadi center
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SpinWheel()));
              },
              child: Container( //button open
                height: 40,
                width: 200,
                color: Colors.grey[800],
                child: Center(child: Text("Openn Spinner Choice",
                 style: TextStyle(color: Colors.white))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
