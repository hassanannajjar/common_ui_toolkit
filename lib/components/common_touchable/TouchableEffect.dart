enum TouchTypes {
  none,
  scaleAndFade,
  scaleAndUp,
  opacity,
}

class TouchableEffect {
  /// the typesof
  TouchTypes type;

  /// The value at which this animation is deemed to be dismissed.
  final double scaleValue;

  /// The value at which this animation is deemed to be dismissed.
  final double opacity;

  /// The value at which this animation is deemed to be dismissed.
  final double lowerBound;

  /// The value at which this animation is deemed to be dismissed.
  final double upperBound;
  int duration;

  TouchableEffect({
    this.type = TouchTypes.none,
    this.opacity = 0.5,
    this.scaleValue = 0,
    this.duration = 20,
    this.lowerBound = 0.5,
    this.upperBound = 1,
  });
}
