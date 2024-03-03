import 'package:flutter/material.dart';
import 'package:stacked_list_carousel/stacked_list_carousel.dart';

class memories extends StatefulWidget {
  @override
  State<memories> createState() => _memoriesState();
}

class _memoriesState extends State<memories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffce88ae),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'Memories',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: StackedListCarousel<AwesomeInAppBanner>(
              items: banners,
              behavior: CarouselBehavior.consume,
              cardBuilder: (context, item, size) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Stack(
                    children: [
                      Image.asset(
                        item.imgAdress,
                        width: size.width,
                        height: size.height,
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            item.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 40.0 *
                                  size.width /
                                  MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              outermostCardHeightFactor: 0.8,
              itemGapHeightFactor: 0.05,
              maxDisplayedItemCount: 3,
              animationDuration: const Duration(milliseconds: 550),
              autoSlideDuration: const Duration(seconds: 8),
              alignment: StackedListAxisAlignment.bottom,
              emptyBuilder: (context) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Made for you by Ikram Zargar.',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                      child: Text(
                        'Exit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffff1950)),
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
              innerCardsWrapper: (child) {
                return Stack(
                  children: [
                    child,
                    Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xffA6A3CC).withOpacity(0.64),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                );
              },
              outermostCardWrapper: (child) {
                return DecoratedBox(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent,
                        blurRadius: 12,
                        blurStyle: BlurStyle.normal,
                        spreadRadius: 6,
                      ),
                    ],
                  ),
                  child: child,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AwesomeInAppBanner {
  final String imgAdress;
  final String title;
  final Color color;

  const AwesomeInAppBanner(
    this.imgAdress,
    this.title,
    this.color,
  );
}

List<AwesomeInAppBanner> banners = <AwesomeInAppBanner>[
  AwesomeInAppBanner(
    'images/image2.jpeg',
    'Swipe to see more',
    Colors.green.shade300,
  ),
  AwesomeInAppBanner(
    'images/image2.jpeg',
    ' ',
    Colors.red.shade300,
  ),
  AwesomeInAppBanner(
    'images/image2.jpeg',
    ' ',
    Colors.purple.shade300,
  ),
  AwesomeInAppBanner(
    'images/image2.jpeg',
    ' ',
    Colors.yellow.shade300,
  ),
  AwesomeInAppBanner(
    'images/image2.jpeg',
    ' ',
    Colors.blue.shade300,
  ),
  AwesomeInAppBanner(
    'images/image2.jpeg',
  '',
    Colors.orange.shade300,
  ),
];
