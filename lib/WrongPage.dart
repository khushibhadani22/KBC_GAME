import 'package:flutter/material.dart';

import 'Global.dart';

class Wrong extends StatefulWidget {
  const Wrong({Key? key}) : super(key: key);

  @override
  State<Wrong> createState() => _WrongState();
}

class _WrongState extends State<Wrong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xff24243e),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset("assets/image/oo-removebg-preview.png"),
              Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 1,
                color: const Color(0xff673ab7),
                child: const Center(
                  child: Text(
                    "SORRY! \nTRY AGAIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      backgroundColor: const Color(0xff673ab7)),
                  onPressed: () {
                    Navigator.of(context).pushNamed('quePage');
                    setState(
                      () {
                        Global.index = 0;
                      },
                    );
                  },
                  child: const Text(
                    "TRY AGAIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ))
            ],
          ),
        ),
      ],
    ));
  }
}
