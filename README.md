# rn-mesh-gradient

![giphy](https://github.com/user-attachments/assets/e1813103-e237-4e31-8a18-88d8d129b4c6)

## Description

A mesh gradient component built in react-native

Compatible with: 
- ✅ iOS >= 18.0
- ✅ Android
- ❌ iOS < 18.0

## Installation

```sh
# npm i rn-mesh-gradient
yarn add rn-mesh-gradient
```

## Usage

```js
import { MeshGradient } from 'rn-mesh-gradient'

<MeshGradient
  style={{ flex: 1 }}
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
```
