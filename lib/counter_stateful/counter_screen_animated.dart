import 'package:flutter/material.dart';
//single file to show counter with crossFade animated
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  bool a = true;
  CrossFadeState animatedFirst = CrossFadeState.showFirst;
  CrossFadeState animatedSecond = CrossFadeState.showSecond;
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
          'Animated Counter',
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
                    setState(() {
                      counter -= 1;
                      a = false;
                    });
                  },
                  child: AnimatedCrossFade(
                      duration: const Duration(seconds: 1),
                      firstChild: const Text(
                        'Minus ',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      secondChild: const Text(
                        '-1 loading...',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      crossFadeState: a
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst),
                ),
              ),
              //Text output
              Text(
                '$counter',
                style: const TextStyle(fontSize: 29, color: Colors.black),
              )
              //button2
              ,
              SizedBox(
                width: 100,
                height: 80,
                // decoration: const BoxDecoration(shape: BoxShape.circle),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: () {
                    setState(() {});
                    counter += 1;
                    a = true;
                  },
                  child: AnimatedCrossFade(
                      duration: const Duration(seconds: 1),
                      firstChild: const Text(
                        'plus ',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      secondChild: const Text(
                        '+1 loading...',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      crossFadeState: a
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond),
                  // child: const Text(
                  //   ' Plus ',
                  //   style: TextStyle(fontSize: 20, color: Colors.white),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
