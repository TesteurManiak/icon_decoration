# icon_decoration

![Pub Version](https://img.shields.io/pub/v/icon_decoration)
[![GitHub issues](https://img.shields.io/github/issues/TesteurManiak/icon_decoration)](https://github.com/TesteurManiak/icon_decoration/issues)
[![GitHub license](https://img.shields.io/github/license/TesteurManiak/icon_decoration)](https://github.com/TesteurManiak/icon_decoration/blob/main/LICENSE)

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

![](https://raw.githubusercontent.com/TesteurManiak/icon_decoration/main/test/goldens/shadow_with_offset3_0.png)

```dart
DecoratedIcon(
    icon: Icon(Icons.home, color: Colors.red),
    decoration: IconDecoration(
        shadows: [Shadow(blurRadius: 3, offset: Offset(3, 0))],
    ),
)
```

### Add borders to icons

![](https://raw.githubusercontent.com/TesteurManiak/icon_decoration/main/test/goldens/border_with_colorized_icon.png)

```dart
DecoratedIcon(
    icon: Icon(Icons.favorite, color: Colors.green),
    decoration: IconDecoration(border: IconBorder()),
)
```

### Add gradients to icons

![](https://raw.githubusercontent.com/TesteurManiak/icon_decoration/main/test/goldens/base_gradient.png)

```dart
DecoratedIcon(
    icon: Icon(Icons.all_inbox),
    decoration: IconDecoration(
        gradient: _rainbowGradient,
    ),
)
```

### Mix them all together

![](https://raw.githubusercontent.com/TesteurManiak/icon_decoration/main/test/goldens/gradient_with_border_and_shadow.png)

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
