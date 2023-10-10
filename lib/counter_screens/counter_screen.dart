import 'package:flutter/material.dart';

////single file to show counter with statefullWidget
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //button1
              Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: () {
                    counter -= 1;
                    setState(() {});
                  },
                  child: const Text(
                    ' Minus ',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              //Text output
              Text(
                '$counter',
                style: const TextStyle(fontSize: 29, color: Colors.black),
              )
              //button2
              ,
              Container(
                width: 100,
                height: 80,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: () {
                    setState(() {});
                    counter += 1;
                  },
                  child: const Text(
                    ' Plus ',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
