import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter_svg/svg.dart';

class HappyBirthday extends StatefulWidget {
  const HappyBirthday({super.key});

  @override
  State<HappyBirthday> createState() => _HappyBirthdayState();
}

class _HappyBirthdayState extends State<HappyBirthday> {
  late ConfettiController _controllerCenterTop;

  @override
  void initState() {
    super.initState();
    _controllerCenterTop = ConfettiController(duration: const Duration(seconds: 5));


    _controllerCenterTop.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff3a1c4), //,
      body: ConfettiWidget(
        confettiController: _controllerCenterTop,
        blastDirectionality: BlastDirectionality.explosive,

        shouldLoop: true,
        colors: const [Colors.blue, Colors.pink, Colors.purple, Colors.green, Colors.yellow],
        numberOfParticles: 10,
        emissionFrequency: 0.4,
        gravity: 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Happy Birthday, My Friend',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white
            ),
        ),
        SvgPicture.asset('images/cake.svg'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: Text(
                'Something More',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xffff1950)),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controllerCenterTop.dispose();
    super.dispose();
  }
}