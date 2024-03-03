import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class finalScreen extends StatefulWidget {
  const finalScreen({super.key});

  @override
  State<finalScreen> createState() => _finalScreenState();
}

class _finalScreenState extends State<finalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffce88ae),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 240,
                child: Image.asset(
                  'images/image1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'To my Best Friend\n\n'
                    'Wishing you a day filled with joy, laughter, and unforgettable moments. May this year bring you endless blessings,'
                    'exciting adventures, and all the happiness you truly deserve. Cheers to another fantastic year ahead!'
                    '\nWith Regards.',
                    speed: Duration(milliseconds: 60),
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
                isRepeatingAnimation: false,
              )),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/fourth');
            },
            child: Text(
              'Memories',
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
          Expanded(
            child: ClipPath(
              clipper: WaveClipperTwo(
                flip: true,
                reverse: true,
              ),
              child: Container(
                height: 240,
                child: Image.asset(
                  'images/image1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
