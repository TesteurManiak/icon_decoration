# icon_decoration

[![Pub Version](https://img.shields.io/pub/v/icon_decoration)](https://pub.dev/packages/icon_decoration)
[![Test workflow](https://github.com/TesteurManiak/icon_decoration/actions/workflows/tests.yml/badge.svg)](https://github.com/TesteurManiak/icon_decoration/actions/workflows/tests.yml)
[![Coverage Status](https://coveralls.io/repos/github/TesteurManiak/icon_decoration/badge.svg?branch=main)](https://coveralls.io/github/TesteurManiak/icon_decoration?branch=main)

Add decoration capabilities to the `Icon` widget with borders and gradients. This new `DecoratedIcon` widget overlap itself with the base `Icon` widget to provide a more complete decoration system through a `IconDecoration` property.

## Table of contents

- [Add to your project](#add-to-your-project)
  - [Add dependency to your `pubspec.yaml`](#add-dependency-to-your-pubspecyaml)
  - [Import the package](#import-the-package)
- [How to use](#how-to-use)
  - [Add borders to icons](#add-borders-to-icons)
  - [Add gradients to icons](#add-gradients-to-icons)
  - [Mix them all together](#mix-them-all-together)
- [Migration Guide](#migration-guide)
  - [v2.0.0](#v200)

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

### Add borders to icons

![](https://github.com/TesteurManiak/icon_decoration/blob/main/screenshots/border_with_colorized_icon.png)

```dart
DecoratedIcon(
    icon: Icon(Icons.favorite, color: Colors.green),
    decoration: IconDecoration(border: IconBorder()),
)
```

### Add gradients to icons

**Gradients are supported on Flutter Web only with the [canvaskit renderer][flutter_web_renderer]**

![](https://github.com/TesteurManiak/icon_decoration/blob/main/screenshots/base_gradient.png)

```dart
DecoratedIcon(
    icon: Icon(Icons.all_inbox),
    decoration: IconDecoration(
        gradient: rainbowGradient,
    ),
)
```

### Mix them all together

![](https://github.com/TesteurManiak/icon_decoration/blob/main/screenshots/gradient_with_border_and_shadow.png)

```dart
DecoratedIcon(
    icon: Icon(
        Icons.all_inbox,
        shadows: [
            Shadow(
                color: Colors.red,
                blurRadius: 3,
                offset: Offset(0, 2),
            ),
        ],
    ),
    decoration: IconDecoration(
        gradient: _rainbowGradient,
        border: IconBorder(),
    ),
)
```

## Migration Guide

### v2.0.0

* Removed `IconDecoration.shadows`, use `Icon.shadows` instead.

**Before**

```dart
DecoratedIcon(
    icon: Icon(Icons.all_inbox),
    decoration: IconDecoration(
        shadows: [
            Shadow(
                color: Colors.red,
                blurRadius: 3,
                offset: Offset(0, 2),
            ),
        ],
    ),
)
```

**After**

```dart
Icon(
    Icons.all_inbox,
    shadows: [
        Shadow(
            color: Colors.red,
            blurRadius: 3,
            offset: Offset(0, 2),
        ),
    ],
),
```

[flutter_web_renderer]: https://docs.flutter.dev/platform-integration/web/renderers