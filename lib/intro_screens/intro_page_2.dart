import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: Center(
        child: Column(
          children: [
            Spacer(flex: 1,),
            Image.asset('assets/img/02.jpg'),
            SizedBox(height: 10,),
            Text('Page 2', style: TextStyle(fontSize: 24, color: Colors.white),),
            Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
