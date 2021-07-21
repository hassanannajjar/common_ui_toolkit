import 'dart:ui';
// ----------------------------------------

//   **** Colors *****
const PRIMARY_COLOR = 0xFF096637;
const SECONDRY_COLOR = 0xFF61BA6E;
const WHITE_COLOR = 0xFFFFFFFF;
const WHITE2_COLOR = 0xFFFAFAFA;
const RED_COLOR = 0xFFFF0000;
const GREY_COLOR = 0xFF707070;
const GREY2_COLOR = 0xFF8F9295;
const GERY3_COLOR = 0xFF7B7B7C;
const GERY4_COLOR = 0xFFF0F0F0;
const GERY5_COLOR = 0xFF6B6C7E;
const TEXT_FIELD_GREY_COLOR = 0xFFF0F4F8;
const LIGHT_GREY_COLOR = 0xFF777779;
const DISABLED_COLOR = 0xFFCBCBCB;
const BLACK_COLOR = 0xFF1D2029;
const BLUE_COLOR = 0xFF6B6C7E;
const HEADER_COLOR = 0xFF444445;

// ----------------------------------------

//   **** Fonts *****
const H1_FONT = 32.0;
const H2_FONT = 24.0;
const H3_FONT = 18.0;
const H4_FONT = 15.0;
const H5_FONT = 12.0;
const H6_FONT = 9.0;
const HEADER_FONT = 20.0;
const BUTTON_FONT = 18.0;

// ----------------------------------------

// **** MediaQuery ****
var pixelRatio = window.devicePixelRatio;

// ----------------------------------------

// **** Arguments ****
const FROM_PAYMENT = 'fromPayment';

//Size in physical pixels
var physicalScreenSize = window.physicalSize;
var physicalWidth = physicalScreenSize.width;
var physicalHeight = physicalScreenSize.height;

//Size in logical pixels
var logicalScreenSize = window.physicalSize / pixelRatio;
// ignore: duplicate_ignore
var DEVICE_WIDTH = logicalScreenSize.width;
var DEVICE_HEIGHT = logicalScreenSize.height;
