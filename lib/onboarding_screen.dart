import 'package:dope_introduction_screens/home_page.dart';
import 'package:dope_introduction_screens/intro_screens/intro_page_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_screens/intro_page_2.dart';
import 'intro_screens/intro_page_3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                GestureDetector(
                    onTap:() {
                      _controller.jumpToPage(2);
                    },
                    child:
                    Text('skip', style: TextStyle(color: Colors.white),
                    ),
                ),

                SmoothPageIndicator(
                    controller: _controller,
                    count: 3
                ),

                onLastPage ?
                GestureDetector(
                  onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  child:
                  Text('done', style: TextStyle(color: Colors.white),
                  ),
                ) :
                GestureDetector(
                  onTap:() {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                  child:
                  Text('next', style: TextStyle(color: Colors.white),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
