import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 1,
        style: BorderStyle.solid,
      ),
    );
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const DecoratedIcon(
                    icon: Icon(
                      Icons.lightbulb_outline,
                      color: Colors.lightBlueAccent,
                      size: 36,
                    ),
                    decoration: IconDecoration(
                      shadows: [
                        Shadow(blurRadius: 3, color: Colors.lightBlueAccent),
                      ],
                    ),
                  ),
                  DecoratedIcon(
                    icon: const Icon(
                      Icons.lightbulb_outline,
                      color: Colors.lightBlueAccent,
                      size: 36,
                    ),
                    decoration: IconDecoration(shadows: [
                      Shadow(
                        blurRadius: 3,
                        color: Colors.lightBlueAccent.shade100,
                      ),
                    ]),
                  ),
                  const DecoratedIcon(
                    icon: Icon(
                      Icons.lightbulb_outline,
                      color: Colors.lightBlueAccent,
                      size: 36,
                    ),
                    decoration: IconDecoration(shadows: [
                      Shadow(blurRadius: 2, color: Colors.lightBlueAccent),
                    ]),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DecoratedIcon(
                    icon: Icon(
                      Icons.home,
                      color: Colors.green.shade900,
                      size: 36,
                    ),
                    decoration: const IconDecoration(shadows: [
                      Shadow(color: Colors.yellowAccent, blurRadius: 3),
                    ]),
                  ),
                  DecoratedIcon(
                    icon: Icon(
                      Icons.home,
                      color: Colors.green.shade900,
                      size: 36,
                    ),
                    decoration: IconDecoration(shadows: [
                      Shadow(color: Colors.green.shade900, blurRadius: 3),
                    ]),
                  ),
                  DecoratedIcon(
                    icon: Icon(
                      Icons.home,
                      color: Colors.green.shade900,
                      size: 36,
                    ),
                    decoration: IconDecoration(shadows: [
                      Shadow(color: Colors.green.shade900, blurRadius: 2),
                    ]),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DecoratedIcon(
                    icon: const Icon(Icons.access_alarm, size: 36),
                    decoration: IconDecoration(shadows: [
                      Shadow(
                          color: Colors.yellowAccent.shade400, blurRadius: 3),
                    ]),
                  ),
                  DecoratedIcon(
                    icon: const Icon(Icons.access_alarm, size: 36),
                    decoration: IconDecoration(shadows: [
                      Shadow(color: Colors.red.shade400, blurRadius: 3),
                    ]),
                  ),
                  DecoratedIcon(
                    icon: const Icon(Icons.access_alarm, size: 36),
                    decoration: IconDecoration(shadows: [
                      Shadow(color: Colors.cyanAccent.shade400, blurRadius: 3),
                    ]),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  DecoratedIcon(
                    icon: Icon(Icons.favorite, size: 36),
                    decoration: IconDecoration(
                      border: IconBorder(color: Colors.yellow, width: 4),
                    ),
                  ),
                  DecoratedIcon(
                    icon: Icon(Icons.favorite, size: 36),
                    decoration: IconDecoration(
                      border: IconBorder(color: Colors.red, width: 4),
                      shadows: [
                        Shadow(color: Colors.red, blurRadius: 6),
                      ],
                    ),
                  ),
                  DecoratedIcon(
                    icon: Icon(Icons.favorite, size: 36, color: Colors.red),
                    decoration: IconDecoration(
                      border: IconBorder(color: Colors.cyan, width: 4),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
