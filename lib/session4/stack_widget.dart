import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              color: Colors.deepPurple[300],
            ),
            Container(
              height: 150,
              width: 350,
              color: Colors.red[300],
            ),
            Positioned(
              right: 0,
              bottom: 50,
              child: Container(
                height: 100,
                width: 250,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
