# icon_decoration

Add decoration capabilities for the Icon widget with shadows, borders, gradients.

## Features

* Add shadows to icons
* Add borders to icons

![](https://raw.githubusercontent.com/TesteurManiak/icon_decoration/main/test/goldens/base_test.png)

## Sample

```dart
import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

DecoratedIcon(
    icon: Icon(Icons.favorite),
    decoration: IconDecoration(
        shadows: <Shadow>[
            Shadow(
                blurRadius: 3.0,
                color: Colors.red,
            ),
        ],
    ),
)
```

## TODO

* Add support for gradients
