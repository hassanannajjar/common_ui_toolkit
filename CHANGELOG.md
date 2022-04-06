## 0.3.2

- Added parameters to be inline if you want to edit some attribute inline without update the style.
ex: 
before =>
```dart 
CommonContainerModel containerStyle = CommonContainerModel(backgroundColor:Colors.red, width:0.2,);

CommonContainer(style:containerStyle);
CommonContainer(style:containerStyle.copyWith(paddingTop:0.01,),);
```

After =>
```dart 
CommonContainerModel containerStyle = CommonContainerModel(backgroundColor:Colors.red, width:0.2,);

CommonContainer(style:containerStyle);
CommonContainer(style:containerStyle, paddingTop:0.01,);
```

- Added border radius attribute fro CommonDatetimePicker component.
- Added flutter_lints to package and example 
- Updated environment sdk version to be ` sdk: ">=2.16.1 <3.0.0"`.
- Updated radius strong use left, right, top and bottom with border radius.
- Fixed typo errors >_<.

## 0.3.1

- Used `AlignmentGeometry` instead of `Alignment`

## 0.3.0

- Added Common button style to common button

## 0.2.9

- Added isResponsive value for `CommonContainerModel` and the default value is [true]
- Used isResponsive value in 
  - width, height, minWidth, minHeight, maxWidth and maxHeight.
  - borderRadius.
  - margin and padding, left, right, bottom, top, vertical and horizontal.

## 0.2.8

- Added column Cross Axis Alignment
- Added column main Axis Alignment
- Added column main Axis size
- Added row cross Axis Alignment
- Added row main Axis Alignment
- Added row main Axis size

## 0.2.7
* Fix typo error.
* Added mutable color type to any color.

- Fix max lines bugs.
- Fix obscure text bug.


## 0.2.5
* Fix max lines bugs.
* Fix obscure text bug.

## 0.2.4

- Added on press to common icon.
- Added missing copy with function to text input field.

## 0.2.3

- Added constants keyword before constants attributes.

## 0.2.2

- Added text input component.
- Added examples in text inputs screen

## 0.2.1

- fixed date picker time line problem width problem .

## 0.1.7

- Added date picker time line and fixed border width problem.

## 0.1.6

- Added more Comments and updated documentation.

## 0.1.3

- Added foreground decoration and handel custom foreground decoration.
- Added new documentation with full examples and biggest update.

## 0.1.2

- Added CommonDatePicker component.
- Added more examples for Date picker.

## 0.1.1

- Added more touch type and animations.
- Changed `TouchableEffect` to be class and added more attribute to customize the animation.

## 0.1.0

- Added more examples.
- Fixed `TouchableEffect` re-render.

## 0.0.9

- Fixed `TouchableEffect` in `CommonTouchable` to enable hot reload.
- Set mainAxisSize to min for CommonText column.
- Fixed `TouchableEffect` re-render.

## 0.0.8

- Added onPress to `CommonContainer` and `CommonText` and `CommonTouchable`.
- also we added touchable effects like animation to your `CommonContainer` to use it you can add the touchEffect attribute to `CommonContainerModel`.

- ```dart
  touchEffect: TouchableEffect.scaleAndFade,
  ```
- Added more examples and example screen for all component in package.

## 0.0.7

- Updated documentation and added more examples.

## 0.0.6

- added functions command.

## 0.0.5

- Updated Readme file.

## 0.0.4

- Updated Common Text.

## 0.0.3

- Updated CommonContainer.

## 0.0.2

- added examples.