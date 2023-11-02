import 'package:flutter/material.dart';

class ElevatedBtonWidget extends StatelessWidget {
  const ElevatedBtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Elevated button pressed");
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  fixedSize:
                      MaterialStateProperty.all<Size>(const Size(250, 60)),
                  elevation: MaterialStateProperty.all<double>(20.0),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                  enableFeedback: true,
                  overlayColor: MaterialStateProperty.all<Color>(Colors.red)),
              child: const Text("click"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                print("Elevated button pressed");
              },
              label: const Text("Add"),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  fixedSize:
                      MaterialStateProperty.all<Size>(const Size(250, 60)),
                  elevation: MaterialStateProperty.all<double>(20.0),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                  enableFeedback: true,
                  overlayColor: MaterialStateProperty.all<Color>(Colors.red)),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
