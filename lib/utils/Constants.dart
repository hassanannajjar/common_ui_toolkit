import 'dart:ui';
// ignore_for_file: non_constant_identifier_names

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
var DEVICE_WIDTH = logicalScreenSize.width;
var DEVICE_HEIGHT = logicalScreenSize.height;
