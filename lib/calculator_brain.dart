//The main brain of the calculator

import 'dart:math';

class CalculatorBrain {
  String output = '0'; // Store result to be printed to user
  String _output = ''; // Store calculation result
  dynamic num1 = 0; // Store output value when arithmetic operation is pressed
  dynamic num2 = 0;
  String operator = ''; // Stores our operator
  String resultOperationText = ''; // Store result operation below output text
  bool isPressedPercentageButton = true; // Determines percentage button state

  String? buttonPressed(String buttonText) {
    if (buttonText == 'AC') {
      _output = '';
      num1 = 0;
      num2 = 0;
      operator = '';
      output = '0';
      resultOperationText = '';
      isPressedPercentageButton = true;

      return output;
    } else if (buttonText == '+/-') {
      isPressedPercentageButton = true;

      if (_output.contains('-', 0)) {
        _output += '';
        output = _output;
        resultOperationText = output;
      } else {
        _output += '-';
        output = _output;
        resultOperationText = output;
      }
      return output;
    } else if (buttonText == '%') {
      if (isPressedPercentageButton) {
        if (output.contains('.')) {
          num1 = double.parse(output);
        } else {
          num1 = int.parse(output);
        }

        _output = (num1 / 100).toString();
        output = _output;
        _output = '';
        num1 = 0;
        resultOperationText = output;
        return output;
      }
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '÷' ||
        buttonText == 'x') {
      if (output.contains('.')) {
        num1 = double.parse(output);
      } else {
        num1 = double.parse(output);
      }
      operator = buttonText;
      resultOperationText = operator;
      isPressedPercentageButton = false;
      _output = '';
    } else if (buttonText == '.') {
      if (_output.contains('.')) {
        _output += '';
        output = _output;
        resultOperationText = output;
      } else {
        _output += buttonText;
        output = _output;
        resultOperationText = output;
      }
    } else if (buttonText == '=') {
      isPressedPercentageButton = true;
      if (output.contains('.')) {
        num2 = double.parse(output);
      } else {
        num2 = int.parse(output);
      }

      if (operator == '+') {
        _output = (num1 + num2).toString();
      }

      if (operator == '-') {
        _output = (num1 - num2).toString();
      }

      if (operator == 'x') {
        _output = (num1 * num2).toString();
      }

      if (operator == '÷') {
        _output = (num1 / num2).toString();
      }

      num1 = 0;
      num2 = 0;
      operator = '';

      if (_output.contains('.')) {
        output = double.parse(_output).toStringAsFixed(2);
      } else {
        output = _output;
      }

      resultOperationText = '';
      _output = '';
    } else {
      _output += buttonText;
      output = _output;
      resultOperationText += buttonText;
    }

    return output;
  }
}
