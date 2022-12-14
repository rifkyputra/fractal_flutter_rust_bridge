# fractal_flutter

An example of making flutter and rust work in harmony.

## Package Used

### flutter_rust_bridge (pub)

<https://pub.dev/packages/flutter_rust_bridge/versions/1.54.0>
code generation for definitions and dynamic library.

### image (crate)

<https://crates.io/crates/image>
for generating fractal image

### And other required deps

## How to Run

only tested on windows. so this guide is for windows only...

### Install Prerequisite

- Rust installed
- Flutter installed (> 2.0)

`winget install -e --id LLVM.LLVM`

`cargo install flutter_rust_bridge_codegen`

### Run

` git clone `

` cd fractal_flutter `

`flutter pub get`

`cd fractal_from_rust`

`cargo build`

``` bash
flutter_rust_bridge_codegen --rust-input fractal_from_rust/src/fractal.rs --dart-output lib/bridge_generated.dart --dart-decl-output lib/bridge_definitions.dart
```

`flutter run`
