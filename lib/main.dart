import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: ContainerGradient([
        //   Color.fromARGB(255, 26, 2, 80),
        //   Color.fromARGB(255, 45, 7, 98),
        //   Color.fromARGB(255, 133, 12, 89),
        // ]),
        // method 2
        // body: ContainerGradient(gradientColors: [
        //   Color.fromARGB(255, 26, 2, 80),
        //   Color.fromARGB(255, 45, 7, 98),
        //   Color.fromARGB(255, 133, 12, 89),
        // ]
        // body: ContainerGradient(Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 133, 12, 89)),
       // Image.asset() == ContainerGradient.purple()
       body: ContainerGradient.redpurple(),
      ),
    ),
  );
}
