import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: Colors.red,
              iconSize: 80,
              splashColor: Colors.black,
              splashRadius: 60,
            ),
            TextButton(
              onPressed: () {
                print("pressed");
              },
              onLongPress: () {
                print("Long pressed");
              },
              child: const Text(
                "text button",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
