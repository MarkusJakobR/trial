import 'package:flutter/material.dart';
import 'package:flutter_sample/my_home_page.dart';

void main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  Widget myGrid() {
    List<String> subjects = [
      "CMSC 12",
      "CMSC 21",
      "CMSC 22",
      "CMSC 23",
      "CMSC 100",
      "CMSC 127"
    ];
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: subjects.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.pink,
            child: Center(child: Text(subjects[index])),
          );
        });
  }

  Widget showHerbie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset('images/herbie.jpg'),
        ),
        Expanded(
          child: Image.asset('images/herbie.jpg'),
        ),
        Expanded(
          child: Image.asset('images/herbie.jpg'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
          children: [Flexible(child: showHerbie()), Flexible(child: myGrid())]),
    ));
  }
}
