import 'dart:math';

import 'package:disedisedice/hylophone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  Random ran = Random();
  int oyn = 1;
  int oyn1 = 1;
  int dodo = 0;

  void birChangeDice() {
    oyn = ran.nextInt(6) + 1;
    oyn1 = ran.nextInt(6) + 1;
    dodo = dodo + oyn + oyn1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFE93B),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Тапшырма 5",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: Text(
                "Jumabek Namazbekovich",
                style: GoogleFonts.sofia(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      birChangeDice();
                    });
                  },
                  child: SvgPicture.asset(
                    "assets/images/die_face_$oyn.svg",
                    width: 150,
                    height: 150,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      birChangeDice();
                    });
                  },
                  child: SvgPicture.asset(
                    "assets/images/die_face_$oyn1.svg",
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),
            //Жумабек жакшылап үйрөнүп, жаңы горизонтторду багындыра башта бүт дүйнө сени жана элиңди сыйлай турган болсун!
            const SizedBox(
              height: 34,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Hylophone()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Expanded(
                    child: Text(
                      "Jumabek study well and start conquering new horizons. Know that the whole world respects you and your people!",
                      style: GoogleFonts.sofadiOne(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
