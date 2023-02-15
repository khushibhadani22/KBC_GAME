import 'package:flutter/material.dart';
import 'Global.dart';

class QUE extends StatefulWidget {
  const QUE({Key? key}) : super(key: key);

  @override
  State<QUE> createState() => _QUEState();
}

class _QUEState extends State<QUE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(
          "QUIZ",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff0f0c29),
              Color(0xff302b63),
              Color(0xff24243e),
            ]),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff24243e),
        child: IndexedStack(
          index: Global.index,
          alignment: Alignment.center,
          children: Global.questionAns
              .map(
                (e) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 9,
                          width: MediaQuery.of(context).size.width / 6,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff673ab7)),
                          child: Align(
                              child: Text(
                            "${e['no']}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          height: MediaQuery.of(context).size.height / 11,
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff673ab7),
                          ),
                          child: Align(
                            child: Text(
                              "${e['q']}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 6,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff673ab7)),
                          child: const Align(
                              child: Text(
                            "A",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff673ab7),
                          ),
                          child: InkWell(
                            onTap: () {
                              if (e['ans'] == 'A') {
                                Navigator.of(context).pushNamed('rightPage');
                              } else {
                                Navigator.of(context).pushNamed('wrongPage');
                              }
                              setState(
                                () {
                                  Global.index++;
                                },
                              );
                            },
                            child: Align(
                              child: Text(
                                "${e['A']}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 9,
                          width: MediaQuery.of(context).size.width / 6,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff673ab7)),
                          child: const Align(
                              child: Text(
                            "B",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff673ab7),
                          ),
                          child: InkWell(
                            onTap: () {
                              if (e['ans'] == 'B') {
                                Navigator.of(context).pushNamed('rightPage');
                              } else {
                                Navigator.of(context).pushNamed('wrongPage');
                              }
                              setState(
                                () {
                                  if (Global.index <
                                      Global.questionAns.length - 1) {
                                    Global.index++;
                                  }
                                },
                              );
                            },
                            child: Align(
                              child: Text(
                                "${e['B']}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 9,
                          width: MediaQuery.of(context).size.width / 6,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff673ab7)),
                          child: const Align(
                              child: Text(
                            "C",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff673ab7),
                          ),
                          child: InkWell(
                            onTap: () {
                              if (e['ans'] == 'C') {
                                Navigator.of(context).pushNamed('rightPage');
                              } else {
                                Navigator.of(context).pushNamed('wrongPage');
                              }
                              setState(
                                () {
                                  Global.index++;
                                },
                              );
                            },
                            child: Align(
                              child: Text(
                                "${e['C']}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 9,
                          width: MediaQuery.of(context).size.width / 6,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff673ab7)),
                          child: const Align(
                              child: Text(
                            "D",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff673ab7),
                            ),
                            child: InkWell(
                              onTap: () {
                                if (e['ans'] == 'D') {
                                  Navigator.of(context).pushNamed('rightPage');
                                } else {
                                  Navigator.of(context).pushNamed('wrongPage');
                                }
                                setState(
                                  () {
                                    Global.index++;
                                  },
                                );
                              },
                              child: Align(
                                child: Text(
                                  "${e['D']}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
