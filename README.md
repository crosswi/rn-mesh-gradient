# rn-mesh-gradient

React Native Mesh Gradient

## Requirements

Mesh Gradient works for: 
- iOS 18 or higher.
- Android

## Preview

https://github.com/user-attachments/assets/cff00e3d-200f-47b6-b530-e4a856589e31

## Installation

```sh
yarn add RNMeshGradient
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
