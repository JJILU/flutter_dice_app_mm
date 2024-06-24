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
  var currentDiceRoll1 = 2;
  var currentDiceRoll2 = 1;

  // method
  void rollDice1() {
    setState(() {
      currentDiceRoll1 = Random().nextInt(6) + 1;
    });
  }

  void rollDice2() {
    setState(() {
      currentDiceRoll2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Win or Lose Text
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          child: Text(
            currentDiceRoll1 == currentDiceRoll2 ? "You Won 😀" : "You Lost 🥺",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),

        // dice images
        Row(
          children: [
            Image.asset(
              "dice-images/dice-images/dice-$currentDiceRoll1.png",
              width: 200,
            ),
            Image.asset(
              "dice-images/dice-images/dice-$currentDiceRoll2.png",
              width: 200,
            ),
          ],
        ),

        // SizedBox()
        const SizedBox(
          height: 20,
        ),

        // button
        TextButton(
          onPressed: () {
            rollDice1();
            rollDice2();
          }, // pointer to rollDice()
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
