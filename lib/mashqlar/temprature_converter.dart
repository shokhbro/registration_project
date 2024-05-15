import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void main(List<String> args) {
  runApp(Converter());
}

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  final textController = TextEditingController();
  String convertedTemperature = '';

  void convertToCelsius() {
    double inputNumber = double.tryParse(textController.text) ?? 0;
    double result = (inputNumber - 32) * 5 / 9;
    setState(() {
      convertedTemperature = '${result.toStringAsFixed(2)} °C';
    });
  }

  void convertToFahrenheit() {
    double inputNumber = double.tryParse(textController.text) ?? 0;
    double result = (inputNumber * 9 / 5) + 32;
    setState(() {
      convertedTemperature = '${result.toStringAsFixed(2)} °F';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Temprature Converter",
            style: TextStyle(fontFamily: "Rowdies"),
          ),
        ),
        body: Column(
          children: [
            const Gap(50),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "input number",
                ),
              ),
            ),
            const Gap(30),
            Text(
              convertedTemperature,
              style: const TextStyle(fontSize: 20, fontFamily: "Rowdies"),
            ),
            const Gap(80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: convertToCelsius,
                  child: Container(
                    width: 122,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: const Center(
                      child: Text(
                        "Celsius",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "Rowdies",
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: convertToFahrenheit,
                  child: Container(
                    width: 122,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: const Center(
                      child: Text(
                        "Fahrenheit",
                        style: TextStyle(
                          fontSize: 18,
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
      ),
    );
  }
}
