import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = "dice-images/dice-images/dice-1.png";
  var currentDiceRoll = 2;

  // method
  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // dice images
        Image.asset(
          "dice-images/dice-images/dice-$currentDiceRoll.png",
          width: 200,
        ),

        // SizedBox()
        const SizedBox(
          height: 20,
        ),

        // button
        TextButton(
          onPressed: rollDice, // pointer to rollDice()
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
