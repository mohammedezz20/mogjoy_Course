import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});
  List items = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contxet, index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple[300],
                      ),
                      child: Text(
                        items[index],
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                  itemCount: items.length,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (contxet, index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 200,
                      color: Colors.deepPurple[300],
                      child: Text(
                        items[index],
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                  itemCount: items.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
