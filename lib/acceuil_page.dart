import 'package:flutter/material.dart';
import 'package:login_singnup_2/signup_page.dart';

class AcceuilPage extends StatefulWidget {
  const AcceuilPage({super.key});

  @override
  State<AcceuilPage> createState() => _AcceuilPageState();
}

class _AcceuilPageState extends State<AcceuilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Image.asset(
              fit: BoxFit.cover,
              "assets/image/WhatsApp Image 2024-08-06 à 10.08.141_2b53e377e_upscayl_5x_ultrasharp.png"),
          Positioned(
              bottom: 160,
              left: 170,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10)),
                  onPressed: () {},
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()));
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                        size: 30,
                      ))))
        ],
      )),
    );
  }
}
