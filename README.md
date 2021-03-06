# icon_decoration

[![Pub Version](https://img.shields.io/pub/v/icon_decoration)](https://pub.dev/packages/icon_decoration)
[![Test workflow](https://github.com/TesteurManiak/icon_decoration/actions/workflows/tests.yml/badge.svg)](https://github.com/TesteurManiak/icon_decoration/actions/workflows/tests.yml)
[![Coverage Status](https://coveralls.io/repos/github/TesteurManiak/icon_decoration/badge.svg?branch=main)](https://coveralls.io/github/TesteurManiak/icon_decoration?branch=main)

Add decoration capabilities for the `Icon` widget with shadows, borders, gradients. This new `DecoratedIcon` widget overlap itself with the base `Icon` widget to provide a more complete decoration system through a `IconDecoration` property.

## Add to your project

### Add dependency to your `pubspec.yaml`

```yaml
icon_decoration: any
```

### Import the package

```dart
import 'package:icon_decoration/icon_decoration.dart';
```

## How to use

### Add shadows to icons

![](https://github.com/TesteurManiak/icon_decoration/blob/main/screenshots/shadow_with_offset3_0.png)

```dart
DecoratedIcon(
    icon: Icon(Icons.home, color: Colors.red),
    decoration: IconDecoration(
        shadows: [Shadow(blurRadius: 3, offset: Offset(3, 0))],
    ),
)
```

### Add borders to icons

![](https://github.com/TesteurManiak/icon_decoration/blob/main/screenshots/border_with_colorized_icon.png)

```dart
DecoratedIcon(
    icon: Icon(Icons.favorite, color: Colors.green),
    decoration: IconDecoration(border: IconBorder()),
)
```

### Add gradients to icons

![](https://github.com/TesteurManiak/icon_decoration/blob/main/screenshots/base_gradient.png)

```dart
DecoratedIcon(
    icon: Icon(Icons.all_inbox),
    decoration: IconDecoration(
        gradient: _rainbowGradient,
    ),
)
```

### Mix them all together

![](https://github.com/TesteurManiak/icon_decoration/blob/main/screenshots/gradient_with_border_and_shadow.png)

```dart
DecoratedIcon(
    icon: Icon(Icons.all_inbox),
    decoration: IconDecoration(
        gradient: _rainbowGradient,
        border: IconBorder(),
        shadows: [
            Shadow(
                color: Colors.red,
                blurRadius: 3,
                offset: Offset(0, 2),
            )
        ],
    ),
)
```
