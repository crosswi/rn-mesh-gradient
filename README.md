# `rn-mesh-gradient`

![Mesh Gradient](https://github.com/user-attachments/assets/e1813103-e237-4e31-8a18-88d8d129b4c6)

## Overview

`rn-mesh-gradient` is a versatile and customizable mesh gradient component for React Native. It provides stunning gradient effects and is compatible with both iOS (version 18.0 and above) and Android platforms.

| Platform        | Status                |
|-----------------|-----------------------|
| iOS 18.0+       | ✅ Supported           |
| Android         | ✅ Supported           |
| iOS < 18.0      | ❌ Not Supported       |

## Features

- **Cross-Platform Support:** Available for both iOS (version 18.0+) and Android.
- **Dynamic Gradient Colors:** Supports both static and animated gradients.
- **Flexible Configuration:** Easily customize gradient points and colors.

## Installation

You can install the package via npm or yarn:

```sh
# Using npm
npm install rn-mesh-gradient

# Using yarn
yarn add rn-mesh-gradient
```

# Usage

Here’s a basic example of how to use the MeshGradient component:
```
import React from 'react';
import { StyleSheet, View } from 'react-native';
import { MeshGradient } from 'rn-mesh-gradient';

const App = () => {
  return (
    <View style={styles.container}>
      <MeshGradient
        style={styles.gradient}
        colors={[
          '#ff0000', '#dd8015',
          '#15cce4', '#e6d10f'
        ]}
        frequency={5}
        // iOS only
        points={[
          [0.0, 0.0], [1.0, 0.0],
          [0.0, 1.0], [1.0, 1.0]
        ]}
        animatedColors={[
          '#15cce4', '#0000ff',
          '#ff0000', '#dd8015'
        ]}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  gradient: {
    flex: 1,
  },
});

export default App;
```

# Props

| Prop             | Type                         | Description                                                        |
|------------------|------------------------------|--------------------------------------------------------------------|
| `style`          | `ViewStyle`                  | Custom styles for the component.                                  |
| `colors`         | `Array<string>`              | Array of color codes for the static gradient.                     |
| `animatedColors` | `Array<string>`              | Array of color codes for the animated gradient (iOS only).         |
| `points`         | `Array<[number, number]>`    | Array of points defining the gradient mesh (iOS only).             |
| `frequency`      | `number`                     | Controls the frequency of the animation cycle (if `animatedColors` is used). |

# Contributing

I welcome contributions to improve rn-mesh-gradient. Please refer to our Contributing Guidelines for more details.

# License

This project is licensed under the MIT License. See the LICENSE file for details.

# Contact

For any questions or feedback, please contact me (camcross11@gmail.com) or open an issue on our GitHub repository.
