enum TouchTypes {
  none,
  scaleAndFade,
  scaleAndUp,
  opacity,
}

class TouchableEffect {
  TouchTypes type;
  double scaleValue, opacity, lowerBound, upperBound;
  int duration;

  TouchableEffect({
    this.type = TouchTypes.none,
    this.opacity = 0.5,
    this.scaleValue = 0,
    this.duration = 20,
    this.lowerBound = 0.8,
    this.upperBound = 1.0,
  });
}
