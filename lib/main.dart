import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DiceScreen(),
      ),
    );
  }
}

class DiceScreen extends StatelessWidget {
  const DiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 3;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              ),
              onTap: () => debugPrint('Left Button got pressed.'),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('assets/images/dice2.png'),
              onPressed: () => debugPrint('Right Button got pressed.'),
            ),
          ),
        ],
      ),
    );
  }
}
