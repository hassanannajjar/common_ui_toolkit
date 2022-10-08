<p align="center">
<img  alt='Common Ui Toolkit' src='https://user-images.githubusercontent.com/49004640/148673584-8af12a36-21f6-4c32-9a61-57e2b7827901.png' />
</p>


 [![pub package](https://img.shields.io/pub/v/common_ui_toolkit.svg)](https://pub.dev/packages/common_ui_toolkit) [![pub points](https://badges.bar/common_ui_toolkit/pub%20points)](https://pub.dev/packages/common_ui_toolkit/score) [![popularity](https://badges.bar/common_ui_toolkit/popularity)](https://pub.dev/packages/common_ui_toolkit/score) [![likes](https://badges.bar/common_ui_toolkit/likes)](https://pub.dev/packages/common_ui_toolkit/score) 


[Documentation Web Site Coming Soon... ](https://common-ui-toolkit.netlify.app/#/)

# Documentaion

- [About Common Ui Toolkit](#About-Common-Ui-Toolkit)
- [Installing](#Installing)
- [Components](#Components)
    - [Common Container](#CommonContainer)
       - [Common Container Props](#CommonContainerProps)
       - [CommonContainerModel](#CommonContainerModel)
       - [CommonContainerStyles](#CommonContainerStyles)
    - [Common Text](#CommonText)
       - [CommonTextModel](#CommonTextProps)
       - [CommonTextStyles](#CommonTextStyles) 
    - [Common Button](#CommonButton)
       - [CommonButtonModel](#CommonButtonProps)
       - [CommonButtonStyles](#CommonButtonStyles) 
    - [Common Text Input](#CommonTextInput)
       - [CommonTextInputModel](#CommonTextInputProps)
       - [CommonTextInputStyles](#CommonTextInputStyles) 


## Contributors

<table>
  <tr>
    <td align="center"><a href="https://github.com/hassanannajjar"><img src="https://i.imgur.com/b7cW65h.png" width="100px;" alt="Hassan Al-Najjar"/><br /><sub><b>Hassan Al-Najjar</b></sub></a><br /><a href="" title="Ideas, Planning, & Feedback">🤔</a> <a href="" title="Code">💻</a> <a href="" title="Documentation">📖</a></td>
    <td align="center"><a href="https://github.com/alaaalzibda"><img src="https://i.imgur.com/6shsHMb.png" width="100px;" alt="Alaa Alzibda"/><br /><sub><b>Alaa Alzibda</b></sub></a><br /><a href="" title="Ideas, Planning, & Feedback">🤔</a> <a href="" title="Code">💻</a> <a href="" title="Documentation">📖</a></td>
</tr>
</table>

## License
[MIT](LICENSE.txt) license.

## About Common Ui Toolkit

- Common UI toolkit is a Flutter UI package that allows you creating stunning multi-brand cross-platform mobile applications. It contains a set of general purpose UI components styled in a similar way. And the most awesome thing: the themes can be changed in the runtime, with no need to reload the application.

![Common ui toolkit Material](https://camo.githubusercontent.com/f0487d92194f3c685213539c53e9784113cd8a4b/68747470733a2f2f692e696d6775722e636f6d2f58384f344748622e706e67)


## What's included

- **25+ general-purpose components** designed and tested to save your time.

- **Comprehensive clear documentation** with the tons of examples.

- **Theming System -** Use Light and modern Dark themes and create your own.


## Starter App

**Common UI toolkit Tricks** – allows you to boost the development of a mobile app.

There is a huge variety of customizable layouts, use “as is” or add new blocks.

**Over 40 screens in dark and light themes** give you the possibility to create a bright and exclusive app while saving your time on compiling numerous details.  Also, you can download the source code and use it for your own benefit.


## How can I support the developers?
- Give us a tump from [here](https://pub.dev/packages/common_ui_toolkit)
- Star our GitHub repo :star:
- Join us in the `Common UI toolkit` channel in [Discourd](https://discord.gg/SZXWPjdufA)

## Installing

Add Common Ui Toolkit to your pubspec.yaml file:

```yaml
dependencies:
  common_ui_toolkit:
```

Import Common Ui Toolkit in files that it will be used:

```dart
import 'package:common_ui_toolkit/common_ui_toolkit.dart';

```

## Components

 ### CommonContainer
 
 ```dart
 CommonContainer(
                isLoading: false,
                loadingWidget: CommonText(),
                onPress: ()=>{},
                child: CommonText(
                  style: CommonTextStyles().h2Style(),
                  text: 'Circle',
                ),
                style: CommonContainerModel()
              ),
 ```
  #### CommonContainerProps

 
<table>
<tr>
<th>name</th>
<th>default</th>
<th>type</th>
<th>description</th>
<th>Example</th>
</tr>

<tr>
<td>child</td>
<td>---</td>
<td>Widget</td>
<td>child widget</td>
<td>```dart code ```</td>
</tr>
    
<tr>
<td>isLoading</td>
<td>false</td>
<td>bool</td>
<td>handel the data after loading and check if the data null or not.</td>
<td>---</td>
</tr>
    
<tr>
<td>loadingWidget</td>
<td>---</td>
<td>Widget</td>
<td>custome loading widget.</td>
<td>---</td>
</tr>
    
<tr>
<td>style</td>
<td>CommonContainerModel()</td>
<td>CommonContainerModel</td>
<td>child widget</td>
<td> 
 using CommonContainerModel:
    
   ```dart
    CommonContainerModel(
     alignment: Alignment.center,
     loadingColor: 0xff123155,
     )
   ```
   using defaults style:
   ```dart
   CommonContainerStyle().bottomShadow
   or
   CommonContainerStyle().fullShadow
   ```
</td>
</tr>
    
<tr>
<td>onPress</td>
<td>---</td>
<td>Widget</td>
<td>child widget</td>
<td>```dart code ```</td>
</tr>
</table>

<!-- <table>
<tr>
<th>name</th>
<th>default</th>
<th>type</th>
<th>description</th>
<th>Example</th>
</tr>
<tr>
<td>Text</td>
<td>Text</td>
<td>Text</td>
<td>Text</td>
<td>Text</td>
</tr>
</table> -->

 ### CommonText

 ```dart
CommonText(
                containerStyle: CommonContainerModel(
                  padding: 0.016,
                  borderRadius: 0.016,
                  marginVertical: 0.016,
                  backgroundColor: COMMON_BLACK_COLOR,
                  touchEffect: TouchableEffect(),
                ),
                style: CommonTextStyles().h2Style().copyWith(
                      fontColor: COMMON_WHITE_COLOR,
                      // backgroundColor: COMMON_WHITE_COLOR,
                      // fontWeight: FontWeight.bold,
                    ),
                text: 'Simple common text',
                onPress: () {
                  print('Simple common text pressed');
                },
              ),
 ```
 
   #### CommonTextProps
<table>
<tr>
<th>name</th>
<th>default</th>
<th>type</th>
<th>description</th>
<th>Example</th>
</tr>
    
<tr>
<td>text</td>
<td>---</td>
<td>String</td>
<td>text that will show up</td>
<td>'Simple common text'</td>
</tr>
    
<td>onPress</td>
<td>---</td>
<td>Function</td>
<td>---</td>
<td>
    
   ```dart
    onPress: () {}
   ``` 
</td>
    
    
<tr>
<td>leftChild</td>
<td>---</td>
<td>Widget</td>
<td>child widget</td>
<td>```dart code ```</td>
</tr>    
    
<tr>
<td>rightChild</td>
<td>---</td>
<td>Widget</td>
<td>child widget</td>
<td>```dart code ```</td>
</tr>    
    
<tr>
<td>bottomChild</td>
<td>---</td>
<td>Widget</td>
<td>child widget</td>
<td>```dart code ```</td>
</tr>    
    
<tr>
<td>topChild</td>
<td>---</td>
<td>Widget</td>
<td>child widget</td>
<td>```dart code ```</td>
</tr>    
    
<tr>
<td>inlineSpans</td>
<td>---</td>
<td>List<InlineSpan></td>
<td>In case you need to set different spans inside the text</td>
<td>
    
   ```dart
     inlineSpans: [
                  TextSpan(
                    text: ' RED ',
                    style: TextStyle(
                      color: Color(COMMON_RED_COLOR),
                    ),
                  ),
                  TextSpan(text: 'icon color!'),
                ],
   ``` 
</td>
</tr>
    
<td>style</td>
<td>CommonTextModel()</td>
<td>CommonTextModel</td>
<td>child widget</td>
<td> 
 using CommonTextModel:
    
   ```dart
   CommonTextModel(
                  decoration: TextDecoration.underline,
                  decorationThickness: 3.0,
                  decorationColor: COMMON_RED_COLOR,
                  decorationStyle: TextDecorationStyle.dotted,

                  /// decorationStyle: TextDecorationStyle.wavy,
                  fontWeight: FontWeight.bold,
                  fontSize: COMMON_H1_FONT,
                )
   ```
</td>   
        
<tr>
<td>text</td>
<td>---</td>
<td>String</td>
<td>text that will show up</td>
<td>'Simple common text'</td>
</tr>
            
<tr>
<td>containerStyle</td>
<td>CommonContainerModel()</td>
<td>CommonContainerModel</td>
<td>child widget</td>
<td>You can find it up there</td>
</tr>
    
</table>



 ### CommonButton

 ```dart
CommonButton(
                text: 'Button with elevation and custom size',
                containerStyle: CommonContainerModel(
                  width: 0.4,
                  height: 0.1,
                ),
                style: CommonButtonModel(
                  elevation: 10.0,
                  borderRadius: 0.1,

                  // You can customize the button elecation OR use the default one
                  // customElevation: MaterialStateProperty.all(100)

                  // You can customize the overlay color as well OR use the default one
                  // customOverlayColor: MaterialStateProperty.resolveWith(
                  //   (states) {
                  //     return states.contains(MaterialState.pressed)
                  //         ? getColorType(Colors.red)
                  //         : null;
                  //   },
                  // ),

                  // You can customize the background color of the button
                  // cutomBackgroundColor: MaterialStateProperty.all(
                  //   Colors.amber,
                  // ),
                ),
              ),
 ```
 
   #### CommonButtonProps
<table>
<tr>
<th>name</th>
<th>default</th>
<th>type</th>
<th>description</th>
<th>Example</th>
</tr>
    
<tr>
<td>text</td>
<td>---</td>
<td>String</td>
<td>text that will show up</td>
<td>'Simple common button'</td>
</tr>
    
<td>onPress</td>
<td>---</td>
<td>Function</td>
<td>---</td>
<td>
    
   ```dart
    onPress: () {}
   ``` 
</td>
</tr>

</tr>
    
<td>onLongPress</td>
<td>---</td>
<td>Function</td>
<td>---</td>
<td>
    
   ```dart
    onLongPress: () {}
   ``` 
</td>
</tr>


<td>style</td>
<td>CommonButtonModel()</td>
<td>CommonButtonModel</td>
<td>child widget</td>
<td> 
 using CommonButtonModel:
    
   ```dart
CommonButtonModel(
                  elevation: 10.0,
                  borderRadius: 0.1,

                  // You can customize the button elecation OR use the default one
                  // customElevation: MaterialStateProperty.all(100)

                  // You can customize the overlay color as well OR use the default one
                  // customOverlayColor: MaterialStateProperty.resolveWith(
                  //   (states) {
                  //     return states.contains(MaterialState.pressed)
                  //         ? getColorType(Colors.red)
                  //         : null;
                  //   },
                  // ),

                  // You can customize the background color of the button
                  // cutomBackgroundColor: MaterialStateProperty.all(
                  //   Colors.amber,
                  // ),
                ),
   ```
</td>   
            
<tr>
<td>containerStyle</td>
<td>CommonContainerModel()</td>
<td>CommonContainerModel</td>
<td>child widget</td>
<td>You can find it up there</td>
</tr>

            
<tr>
<td>textContainerStyle</td>
<td>CommonContainerModel()</td>
<td>CommonContainerModel</td>
<td>child widget</td>
<td>You can find it up there</td>
</tr>
                
<tr>
<td>textStyle</td>
<td>CommonTextModel()</td>
<td>CommonTextModel</td>
<td>child widget</td>
<td>You can find it up there</td>
</tr>
    
<tr>
<td>child</td>
<td>---</td>
<td>Widget</td>
<td>child widget</td>
<td>```dart code ```</td>
</tr>
    
</table>


 ### CommonTextInput

 ```dart
CommonTextInput(
                style: CommonTextInputModel(
                  text: 'Intial text input value',
                  focusBorderColor: COMMON_BLACK_COLOR,
                  prefixIcon: CommonIcon(
                    onPress: () {
                      print('Prefix icon pressed');
                    },
                    containerStyle: CommonContainerModel(
                      marginHorizontal: DEVICE_WIDTH * 0.01,
                    ),
                    path: Icons.ac_unit_rounded,
                    iconDataSize: DEVICE_WIDTH * 0.05,
                    color: COMMON_RED_COLOR,
                  ),
                  suffixIcon: CommonIcon(
                    containerStyle: CommonContainerModel(
                      width: DEVICE_WIDTH * 0.04,
                      height: DEVICE_WIDTH * 0.04,
                      marginHorizontal: DEVICE_WIDTH * 0.01,
                    ),
                    color: COMMON_RED_COLOR,
                    path: 'assets/icons/account_icon.svg',
                  ),
                ),
              ),
 ```
 
   #### CommonTextInputProps
<table>
<tr>
<th>name</th>
<th>default</th>
<th>type</th>
<th>description</th>
<th>Example</th>
</tr>
    
<tr>

<td>style</td>
<td>CommonTextInputModel</td>
<td>CommonTextInputModel</td>
<td>---</td>
<td>
    
   ```dart
    CommonTextInputModel(
                  counterText: 'Styled counter Text',
                  counterStyle: TextStyle(
                    color: Colors.red,
                  ),
                  borderWidth: 3,
                  focusBorderColor: COMMON_RED_COLOR,
                  fillColor: COMMON_GREY_COLOR,
                  prefixWidget: CommonText(
                    containerStyle: CommonContainerModel(
                      marginHorizontal: DEVICE_WIDTH * 0.03,
                    ),
                    style: CommonTextModel(
                      fontColor: COMMON_WHITE_COLOR,
                    ),
                    text: '+966',
                  ),
                  suffixWidget: CommonText(
                    containerStyle: CommonContainerModel(
                      marginHorizontal: DEVICE_WIDTH * 0.03,
                    ),
                    style: CommonTextModel(
                      fontColor: COMMON_WHITE_COLOR,
                    ),
                    text: 'Palestine',
                  ),
                )
   ``` 
</td>
    
</tr>
                  
<tr>
<td>containerStyle</td>
<td>CommonContainerModel()</td>
<td>CommonContainerModel</td>
<td>child widget</td>
<td>You can find it up there</td>
</tr>
        
<tr>
<td>text</td>
<td>---</td>
<td>String</td>
<td>text that will show up</td>
<td>'Simple common button'</td>
</tr>
            
<tr>
<td>containerStyle</td>
<td>CommonContainerModel()</td>
<td>CommonContainerModel</td>
<td>child widget</td>
<td>You can find it up there</td>
</tr>
        
<tr>    
<td>onChanged</td>
<td>---</td>
<td>Function</td>
<td>Once the value of the text input changes this functions gets triggered and returns the changed value</td>
<td> 
 using on changed function:
    
   ```dart
onChanged: (value) {
         
        }
   ```
</td>
</tr>
    
    
<tr>
<td>textEditingController</td>
<td>---</td>
<td>TextEditingController</td>
<td>controller of the text iuput to get access to all text input attributes</td>
<td> 
 using TextEditingController:
    
   ```dart
textEditingController: TextEditingController(),
   ```
</td>    
</tr>
    
    
<tr>
<td>onTap</td>
<td>---</td>
<td>Function</td>
<td>This function gets called once the text input is pressed</td>
<td>
 OnTap:
    
   ```dart
 onTap: () {
          if (onTap != null) {
            onTap!();
          }
        },
   ```
</td>
</tr>
</table>


## Visitors Count

<img align="left" src = "https://profile-counter.glitch.me/common_ui_toolkit/count.svg" alt ="Loading">
