import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Center(
        child: Column(
          children: [
            Spacer(flex: 1,),
            Image.asset('assets/img/01.jpg'),
            SizedBox(height: 10,),
            Text('Page 1', style: TextStyle(fontSize: 24, color: Colors.white),),
            Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}


