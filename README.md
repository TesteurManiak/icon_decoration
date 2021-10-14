# icon_decoration

[![GitHub issues](https://img.shields.io/github/issues/TesteurManiak/icon_decoration)](https://github.com/TesteurManiak/icon_decoration/issues)
[![GitHub license](https://img.shields.io/github/license/TesteurManiak/icon_decoration)](https://github.com/TesteurManiak/icon_decoration/blob/main/LICENSE)

Add decoration capabilities for the `Icon` widget with shadows, borders, gradients. This new `DecoratedIcon` widget overlap itself with the base `Icon` widget to provide a more complete decoration system through a `IconDecoration` property.

## Features

* Add shadows to icons
* Add borders to icons

![](https://raw.githubusercontent.com/TesteurManiak/icon_decoration/main/test/goldens/shadow_base_widget.png)

## How to use

Add the dependency to your `pubspec.yaml` :

```yaml
icon_decoration: any
```

Here is an example of a `DecoratedIcon` widget :

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
* Document API
