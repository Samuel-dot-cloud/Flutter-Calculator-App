import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RoundButton extends StatefulWidget {
  RoundButton({
    required this.buttonText,
    required this.colorText,
    required this.onPressed,
    required this.buttonBoxShape,
    required this.buttonWidth,
  });

  final String buttonText;
  final Color colorText;
  final VoidCallback onPressed;
  final NeumorphicBoxShape buttonBoxShape;
  final double buttonWidth;

  @override
  _RoundButtonState createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: widget.onPressed,
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        depth: 6.0,
        shadowDarkColor: Colors.grey.shade500,
        lightSource: LightSource.topLeft,
        boxShape: widget.buttonBoxShape,
        color: const Color(0xFFEDEBEC),
        ),

        // ignore: sized_box_for_whitespace
        child: Container(
          height: MediaQuery.of(context).size.height / 14,
          width: MediaQuery.of(context).size.width / widget.buttonWidth,
          child: Center(
            child: Text(
              widget.buttonText,
              style: TextStyle(
                color: widget.colorText,
                fontSize: 23,
                fontFamily: 'MontserratRegular',
              ),
              ),
            ),
        ),
    );
  }
}
