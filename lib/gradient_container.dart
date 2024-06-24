import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

// stores configuration alignment gradient color
const startAlignment = Alignment.topLeft;

// Explicitly Variable Type
// Alignment? startAlignment;

const endAlignment = Alignment.bottomRight;

// // custom class widget
// class ContainerGradient extends StatelessWidget {
//   // ContainerGradient({key}) : super(key: key);

//   // shortcut
//   // const ContainerGradient(this.gradientColors, {super.key});
//    const ContainerGradient({super.key, required this.gradientColors});

//   final List<Color> gradientColors;

//   @override
//   Widget build(BuildContext context) {
//     // startAlignment = Alignment.topLeft;

//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           // Method 1
//           // colors: [
//           //   Color.fromARGB(255, 26, 2, 80),
//           //   Color.fromARGB(255, 45, 7, 98),
//           //   Color.fromARGB(255, 12, 63, 182),
//           // ],
//           colors: gradientColors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(
//         child: StyledText("Hello World Nomi"),
//       ),
//     );
//   }
// }

// custom class widget
class ContainerGradient extends StatelessWidget {
  // ContainerGradient({key}) : super(key: key);

  // shortcut
  // const ContainerGradient(this.gradientColors, {super.key});
  ContainerGradient(Color this.color1, Color this.color2, {super.key});

  // secondary constructor predefined function
  ContainerGradient.greenorange({super.key})
      : color1 = Colors.green,
        color2 = Colors.deepOrange;

  // third constructor predefined function
  ContainerGradient.redpurple({super.key})
      : color1 = Colors.red,
        color2 = Colors.deepPurple;

  final Color color1;
  final Color color2;
  var activeDiceImage = "dice-images/dice-images/dice-1.png";

  // method
  void rollDice() {
    activeDiceImage = "dice-images/dice-images/dice-1.png";
    print("changig image...");
  }

  @override
  Widget build(BuildContext context) {
    // startAlignment = Alignment.topLeft;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Method 1
          // colors: [
          //   Color.fromARGB(255, 26, 2, 80),
          //   Color.fromARGB(255, 45, 7, 98),
          //   Color.fromARGB(255, 12, 63, 182),
          // ],
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // dice images
            Image.asset(
              activeDiceImage,
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
        ),
      ),
    );
  }
}
