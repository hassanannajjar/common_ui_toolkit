import 'dart:ui';
// ignore_for_file: non_constant_identifier_names
// ----------------------------------------

//   **** Colors *****
const COMMON_BLACK_COLOR = 0xFF1D2029;
const COMMON_WHITE_COLOR = 0xFFFFFFFF;
const COMMON_PR_COLOR = 0xFF071FF8;
const COMMON_RED_COLOR = 0xFFE40000;
const COMMON_TRANSPARENT_COLOR = 0x00000000;
const COMMON_GREY_COLOR = 0xFF707070;

// ----------------------------------------

//   **** Fonts *****
const COMMON_H1_FONT = 32.0;
const COMMON_H2_FONT = 24.0;
const COMMON_H3_FONT = 18.0;
const COMMON_H4_FONT = 15.0;
const COMMON_H5_FONT = 12.0;
const COMMON_H6_FONT = 9.0;
const COMMON_HEADER_FONT = 20.0;
const COMMON_BODY_FONT = 14.0;

// ----------------------------------------

// **** MediaQuery ****
var pixelRatio = window.devicePixelRatio;

// ----------------------------------------

/// Size in physical pixels
var physicalScreenSize = window.physicalSize;
var physicalWidth = physicalScreenSize.width;
var physicalHeight = physicalScreenSize.height;

/// Size in logical pixels
var logicalScreenSize = window.physicalSize / pixelRatio;

///  ignore: duplicate_ignore
var DEVICE_WIDTH = logicalScreenSize.width;
var DEVICE_HEIGHT = logicalScreenSize.height;
