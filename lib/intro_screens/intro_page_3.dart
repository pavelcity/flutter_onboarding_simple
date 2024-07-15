import 'package:flutter/material.dart';


class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[700],
      child: Center(
        child: Column(
          children: [
            Spacer(flex: 1,),
            Image.asset('assets/img/03.jpg'),
            SizedBox(height: 10,),
            Text('Page 3', style: TextStyle(fontSize: 24, color: Colors.white),),
            Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
