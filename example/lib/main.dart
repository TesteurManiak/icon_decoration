import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DecoratedIcon(
                    icon: Icon(
                      Icons.lightbulb_outline,
                      color: Colors.lightBlueAccent,
                      size: 36,
                      shadows: [
                        Shadow(blurRadius: 3, color: Colors.lightBlueAccent),
                      ],
                    ),
                  ),
                  DecoratedIcon(
                    icon: Icon(Icons.lightbulb_outline,
                        color: Colors.lightBlueAccent,
                        size: 36,
                        shadows: [
                          Shadow(
                            blurRadius: 3,
                            color: Color.fromARGB(255, 128, 216, 255),
                          ),
                        ]),
                  ),
                  DecoratedIcon(
                    icon: Icon(
                      Icons.lightbulb_outline,
                      color: Colors.lightBlueAccent,
                      size: 36,
                      shadows: [
                        Shadow(blurRadius: 2, color: Colors.lightBlueAccent),
                      ],
                    ),
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
                      shadows: const [
                        Shadow(color: Colors.yellowAccent, blurRadius: 3),
                      ],
                    ),
                  ),
                  DecoratedIcon(
                    icon: Icon(
                      Icons.home,
                      color: Colors.green.shade900,
                      size: 36,
                      shadows: [
                        Shadow(color: Colors.green.shade900, blurRadius: 3),
                      ],
                    ),
                  ),
                  DecoratedIcon(
                    icon: Icon(
                      Icons.home,
                      color: Colors.green.shade900,
                      size: 36,
                      shadows: [
                        Shadow(color: Colors.green.shade900, blurRadius: 2),
                      ],
                    ),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DecoratedIcon(
                    icon: Icon(
                      Icons.access_alarm,
                      size: 36,
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 255, 234, 0),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  DecoratedIcon(
                    icon: Icon(
                      Icons.access_alarm,
                      size: 36,
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 239, 83, 80),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  DecoratedIcon(
                    icon: Icon(
                      Icons.access_alarm,
                      size: 36,
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 0, 229, 255),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DecoratedIcon(
                    icon: Icon(Icons.favorite, size: 36),
                    decoration: IconDecoration(
                      border: IconBorder(color: Colors.yellow, width: 4),
                    ),
                  ),
                  DecoratedIcon(
                    icon: Icon(
                      Icons.favorite,
                      size: 36,
                      shadows: [
                        Shadow(color: Colors.red, blurRadius: 6),
                      ],
                    ),
                    decoration: IconDecoration(
                      border: IconBorder(color: Colors.red, width: 4),
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
