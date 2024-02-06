import 'package:flutter/material.dart';

import 'package:basketball_score/colors.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // padding: EdgeInsets.only(left: 5),
              padding: const EdgeInsets.symmetric(horizontal: 5),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "$teamAPoints",
                    style: const TextStyle(
                      fontSize: 150,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ColorsApp.backgroundColorButton),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                    },
                    child: const Text(
                      "increase point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ColorsApp.backgroundColorButton),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints--;
                      });
                    },
                    child: const Text(
                      "decrease point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ColorsApp.backgroundColorButton),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints += 2;
                      });
                    },
                    child: const Text(
                      "increase 2 point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 500,
              child: VerticalDivider(
                width: 2,
                indent: 40,
                endIndent: 5,
                thickness: 5,
                color: Color(0xFFF9F7C9),
              ),
            ),
            Container(
              // padding: EdgeInsets.only(left: 5),
              padding: const EdgeInsets.symmetric(horizontal: 5),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "$teamBPoints",
                    style: const TextStyle(
                      fontSize: 150,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ColorsApp.backgroundColorButton),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    child: const Text(
                      "increase point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ColorsApp.backgroundColorButton),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints--;
                      });
                    },
                    child: const Text(
                      "decrease point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ColorsApp.backgroundColorButton),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints += 2;
                      });
                    },
                    child: const Text(
                      "increase 2 point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                  ColorsApp.backgroundColorRestButton)),
          onPressed: () {
            setState(() {
              teamBPoints = 0;
              teamAPoints = 0;
            });
          },
          child: const Text(
            'Elevated Button',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
