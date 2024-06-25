import 'package:flutter/material.dart';

class RotatedTextContainer extends StatelessWidget {
  final List<Color> gradientColors;
  final String text;
  final BorderRadius borderRadius;
  final double width;
  final double height;
  final Color textColor;
  final double textSize;
  final Color boxShadowColor;
  final double boxShadowSpreadRadius;
  final double boxShadowBlurRadius;
  final Offset boxShadowOffset;
  final int quarterTurns;

   const RotatedTextContainer({
    super.key,
    required this.gradientColors,
    required this.text,
    this.borderRadius = BorderRadius.zero,
    this.height = 80.0,
    this.width = 25.0,
    this.textColor = Colors.black,
    this.textSize = 13.0,
    this.boxShadowColor =  Colors.black,
    this.boxShadowSpreadRadius = 1.0,
    this.boxShadowBlurRadius = 5.0,
    this.boxShadowOffset = const Offset(0, 3),
    this.quarterTurns = 3,  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: boxShadowColor.withOpacity(0.5),
            spreadRadius: boxShadowSpreadRadius,
            blurRadius: boxShadowBlurRadius,
            offset: boxShadowOffset,
          ),
        ],
      ),
      child: Center(
        child: RotatedBox(
          quarterTurns: quarterTurns,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}
