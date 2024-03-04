## 0.3.13
**Mar 4, 2024**
- Upgrade [intl] version to [^0.18.0]

## 0.3.12
**Jun 30, 2023**
- Changed [DatePickerTheme] to [CommonDatePickerTheme], [BasePickerModel] to [CommonBasePickerModel], [DatePickerModel] to [CommonDatePickerModel], [TimePickerModel] to [CommonTimePickerModel], [Time12hPickerModel] to [CommonTime12hPickerModel].

## 0.3.11
**Jan 30, 2023**
- Upgrade [intl] version to [^0.18.0]

## 0.3.10 => 0.3.10+1
**Jan 30, 2023**
- Fixed [StrokeAlign] new update for flutter [3.7]
- Fixed font weight in common text.

## 0.3.7 => 0.3.9 
**Dec 27, 2022**
- added `topLabel`, `topLabelText`, `topLabelText`, `topLabelStyle` and `topLabelContainerStyle` ot the `CommonInput()`.
- added `suffixWidth`, `prefixWidth`, `suffixHeight` and `prefixHeight` in `CommonInput()`.
- added `disableFontColor` to the `CommonButton()`.
- updated models copyWith classes.

## 0.3.6 
**Dec 7, 2022**
- added configuration function to set your default config and use can use it in the main screen 
ex: 
```dart
setGlobalConfig(
    textModel: const CommonTextModel(
      fontColor: Colors.red,
      fontWeight: FontWeight.bold,
      fontSize: COMMON_H3_FONT,
      textAlign: TextAlign.right,
    ),
    buttonModel: const CommonButtonModel(
      height: 0.05,
      borderRadius: 0.03,
      marginTop: 0.1,
      borderWidth: 2,
    ),
    inputModel: const CommonInputModel(
      borderColor: Colors.red,
      enabledBorderColor: Colors.red,
    ),
  );

```

- changed `isResponsive` to be deprecated and use `size` to create square container.
- Added parameters to be inline if you want to edit some attribute inline without update the style.
ex: 
```dart 
CommonContainerModel containerStyle = CommonContainerModel(backgroundColor:Colors.red, width:0.2,);


// before =>
CommonContainer(style:containerStyle.copyWith(paddingTop:0.01,),);

// After =>
CommonContainer(style:containerStyle, paddingTop:0.01,);

```

## 0.3.3 => 0.3.5 
**May 17, 2022**
- Fixed Log error
- Changed check Function if null or not using call() function from dart.

## 0.3.2 
**May 16, 2022**
- Added border radius attribute fro CommonDatetimePicker component.
- Added flutter_lints to package and example 
- Updated environment sdk version to be ` sdk: ">=2.17.1 <3.0.0"`.
- Updated radius strong use left, right, top and bottom with border radius.
- Fixed typo errors >_<.

## 0.3.1  
**Feb 6, 2022**
- Used `AlignmentGeometry` instead of `Alignment`

## 0.3.0
**Feb 1, 2022**
- Added Common button style to common button

## 0.2.9  
**Jan 26, 2022**
- Added isResponsive value for `CommonContainerModel` and the default value is [true]
- Used isResponsive value in 
  - width, height, minWidth, minHeight, maxWidth and maxHeight.
  - borderRadius.
  - margin and padding, left, right, bottom, top, vertical and horizontal.

## 0.2.8 
**Nov 28, 2021**
- Added column Cross Axis Alignment
- Added column main Axis Alignment
- Added column main Axis size
- Added row cross Axis Alignment
- Added row main Axis Alignment
- Added row main Axis size

## 0.2.7
**Oct 10, 2021**
- Fix typo error.
- Added mutable color type to any color.
- Fix max lines bugs.
- Fix obscure text bug.

## 0.2.2 => 0.2.5
**Aug 30, 2021**
- Fix max lines bugs.
- Fix obscure text bug.
- Added text input component.
- Added examples in text inputs screen
- Added constants keyword before constants attributes.
- Added on press to common icon.
- Added missing copy with function to text input field.

## 0.1.8 => 0.2.1
**Aug 22, 2021**
- fixed date picker time line problem width problem .

## 0.1.7
**Aug 19, 2021**
- Added date picker time line and fixed border width problem.

## 0.1.3 => 0.1.6
**Aug 15, 2021**
- Added more Comments and updated documentation.
- Added foreground decoration and handel custom foreground decoration.
- Added new documentation with full examples and biggest update.

## 0.1.2
**Aug 10, 2021**
- Added CommonDatePicker component.
- Added more examples for Date picker.

## 0.1.1 
**Aug 9, 2021**
- Added more touch type and animations.
- Changed `TouchableEffect` to be class and added more attribute to customize the animation.

## 0.0.8 => 0.1.0
**Aug 7, 2021**
- Fixed `TouchableEffect` in `CommonTouchable` to enable hot reload.
- Set mainAxisSize to min for CommonText column.
- Added onPress to `CommonContainer` and `CommonText` and `CommonTouchable`.
- also we added touchable effects like animation to your `CommonContainer` to use it you can add the touchEffect attribute to `CommonContainerModel`.
- Fixed `TouchableEffect` re-render.
- Fixed `TouchableEffect` re-render.
- Added more examples.
- ```dart
  touchEffect: TouchableEffect.scaleAndFade,
  ```
- Added more examples and example screen for all component in package.

## 0.0.7
**Jul 30, 2021**
- Updated documentation and added more examples.


## 0.04 => 0.0.6
**Jul 29, 2021**
- added functions command.
- Updated Readme file.
- Updated Common Text.

## 0.0.3 
**Jul 22, 2021**
- Updated CommonContainer.

## 0.0.2
**Jul 21, 2021**
- added examples.

## 0.0.1 
**Jul 20, 2021**
- Uploaded First version 🚀.