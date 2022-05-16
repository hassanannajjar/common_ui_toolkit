// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'dart:ui';
// ----------------------------------------

//   **** Colors *****
const int COMMON_BLACK_COLOR = 0xFF1D2029;
const int COMMON_WHITE_COLOR = 0xFFFFFFFF;
const int COMMON_PR_COLOR = 0xFF071FF8;
const int COMMON_RED_COLOR = 0xFFE40000;
const int COMMON_TRANSPARENT_COLOR = 0x00000000;
const int COMMON_GREY_COLOR = 0xFF707070;
const int COMMON_DISABLED_COLOR = 0xFFCBCBCB;

// ----------------------------------------

//   **** Fonts *****
const double COMMON_H1_FONT = 32.0;
const double COMMON_H2_FONT = 24.0;
const double COMMON_H3_FONT = 18.0;
const double COMMON_H4_FONT = 15.0;
const double COMMON_H5_FONT = 12.0;
const double COMMON_H6_FONT = 9.0;
const double COMMON_HEADER_FONT = 20.0;
const double COMMON_BODY_FONT = 14.0;

// ----------------------------------------

// **** MediaQuery ****
double pixelRatio = window.devicePixelRatio;

// ----------------------------------------

/// Size in physical pixels
Size physicalScreenSize = window.physicalSize;
double physicalWidth = physicalScreenSize.width;
double physicalHeight = physicalScreenSize.height;

/// Size in logical pixels
Size logicalScreenSize = window.physicalSize / pixelRatio;

///  ignore: duplicate_ignore
double DEVICE_WIDTH = logicalScreenSize.width;
double DEVICE_HEIGHT = logicalScreenSize.height;
