import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class BikiniPage extends StatelessWidget {
  const BikiniPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Center(
            child: Image.asset("assets/images/sus.jpg"),
          ),
        ),
      ),
    );
  }
}
