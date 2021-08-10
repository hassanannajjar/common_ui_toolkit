import 'dart:ui';
// ignore_for_file: non_constant_identifier_names
// ----------------------------------------

//   **** Colors *****
const BLACK_COLOR = 0xFF1D2029;
const WHITE_COLOR = 0xFFFFFFFF;
const PR_COLOR = 0xFF071FF8;
const RED_COLOR = 0xFFE40000;
const TRANSPARENT_COLOR = 0x00000000;

// ----------------------------------------

//   **** Fonts *****
const H1_FONT = 32.0;
const H2_FONT = 24.0;
const H3_FONT = 18.0;
const H4_FONT = 15.0;
const H5_FONT = 12.0;
const H6_FONT = 9.0;
const HEADER_FONT = 20.0;
const BODY_FONT = 14.0;

// ----------------------------------------

// **** MediaQuery ****
var pixelRatio = window.devicePixelRatio;

// ----------------------------------------

//Size in physical pixels
var physicalScreenSize = window.physicalSize;
var physicalWidth = physicalScreenSize.width;
var physicalHeight = physicalScreenSize.height;

//Size in logical pixels
var logicalScreenSize = window.physicalSize / pixelRatio;
// ignore: duplicate_ignore
var DEVICE_WIDTH = logicalScreenSize.width;
var DEVICE_HEIGHT = logicalScreenSize.height;
