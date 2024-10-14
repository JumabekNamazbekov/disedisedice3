import 'package:audioplayers/audioplayers.dart';
import 'package:disedisedice/Dice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hylophone extends StatefulWidget {
  const Hylophone({super.key});

  @override
  State<Hylophone> createState() => _HylophoneState();
}

class _HylophoneState extends State<Hylophone> {
  final player = AudioPlayer();
  void playSound(int soundNumber) {
    player.play(AssetSource('assets/play$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Dice()),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 40,
                      )),
                  const SizedBox(
                    width: 88,
                  ),
                  Text(
                    "Hylophone",
                    style: GoogleFonts.sahitya(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    player.play(AssetSource("assets/play/do.waw"));
                  });
                },
                child: Container(
                  color: Colors.red,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    player.play(AssetSource("assets/play/re.waw"));
                  });
                },
                child: Container(
                  color: Colors.yellow,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    player.play(AssetSource("assets/play/mi.waw"));
                  });
                },
                child: Container(
                  color: Colors.pink,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    player.play(AssetSource("assets/play/fa.waw"));
                  });
                },
                child: Container(
                  color: Colors.purple,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    player.play(AssetSource("assets/play/so.waw"));
                  });
                },
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    player.play(AssetSource("assets/play/la.waw"));
                  });
                },
                child: Container(
                  color: Colors.green,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    player.play(AssetSource("assets/play/si.waw"));
                  });
                },
                child: Container(
                  color: Colors.redAccent,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
