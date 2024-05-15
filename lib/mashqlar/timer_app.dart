import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const TimerApp());
}

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimerScreen(),
    );
  }
}

class TimerScreen extends StatefulWidget {
  @override
  State<TimerScreen> createState() => TimerScreenState();
}

class TimerScreenState extends State<TimerScreen> {
  final textController = TextEditingController();

  Timer? timer;
  int start = 0;

  int userInput() {
    int? input = int.tryParse(textController.text) ;
    return input!;
  }

  void startTimer() {
    timer?.cancel();
    start = userInput();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (start > 0) {
          start--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Timer App",
          style: TextStyle(fontFamily: "Rowdies"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textController,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Input number",
              ),
            ),
          ),
          const Gap(30),
          Text(
            '$start',
            style: const TextStyle(fontSize: 48, fontFamily: "Rowdies"),
          ),
          const Gap(80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: startTimer,
                child: Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text(
                      "Start",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontFamily: "Rowdies",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
