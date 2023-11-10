import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            height: 200,
            color: Colors.deepPurple[300],
          );
        },
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
      ),
    );
  }
}
