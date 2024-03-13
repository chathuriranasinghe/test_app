import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Brightness - $brightness'),
          Slider(
              max: 100,
              value: brightness,
              onChanged: (value) {
                setState(() {
                  brightness = value;
                });
              }),
        ],
      )),*/

        body: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 0, mainAxisSpacing: 0),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index.isEven ? Colors.green : Colors.amberAccent),
            child: Center(
              child: Text(
                index.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        );
      },
    ));
  }
}
