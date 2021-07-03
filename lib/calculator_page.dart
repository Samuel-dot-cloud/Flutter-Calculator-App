import 'package:calculator_app/calculator_brain.dart';
import 'package:calculator_app/constants.dart';
import 'package:calculator_app/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String result = '0';

  // The brain of the calculator
  CalculatorBrain calc = CalculatorBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEBEC),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300.0,
                    maxHeight: 70.0,
                  ),
                  child: Text(
                    result,
                    style: kResultTextStyle,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 30,
                ),
                child: Text(
                  calc.resultOperationText,
                  style: kOperationTextStyle,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Using custom round buttons
                  RoundButton(
                      buttonText: 'AC',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('AC')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: '+/=',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('+/=')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: '%',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('%')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: '÷',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('÷')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0
                      ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Using custom round buttons
                  RoundButton(
                      buttonText: '7',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('7')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: '8',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('8')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: '9',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('9')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: 'x',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('x')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Using custom round buttons
                  RoundButton(
                      buttonText: '4',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('4')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0
                      ),

                  RoundButton(
                      buttonText: '5',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('5')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: '6',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('6')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0
                      ),

                  RoundButton(
                      buttonText: '-',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('-')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0
                      ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Using custom round buttons
                  RoundButton(
                      buttonText: '1',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('1')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: '2',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('2')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: '3',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('3')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: '+',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('+')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0
                      ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Using custom round buttons
                  RoundButton(
                      buttonText: '0',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('0')!;
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(40.0),
                      ),
                      buttonWidth: 2.9
                      ),

                  RoundButton(
                      buttonText: '.',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('.')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0),

                  RoundButton(
                      buttonText: '=',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('=')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8.0
                      ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
