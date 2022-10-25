import 'package:flutter/foundation.dart';

class Calculations {
  String outPut = '0';
  String _outPut = '';

  dynamic num1 = 0;
  dynamic num2 = 0;
  String operator = '';
  String resultOperationText = '';
  bool isPressedPersendage = true;

  String buttonPressed(String buttonText) {
    if (buttonText == "C") {
      outPut = '0';
      _outPut = '';

      num1 = 0;
      num2 = 0;
      operator = '';
      resultOperationText = '';
      isPressedPersendage = true;

      return outPut;
    } else if (buttonText == "+/-") {
      isPressedPersendage = true;

      if (outPut.contains("-")) {
        debugPrint("Already Contains a Minus ");
        // _outPut = _outPut + '';
        outPut = _outPut;
        resultOperationText = outPut;
      } else {
        _outPut = '-$_outPut';
        outPut = _outPut;
        resultOperationText = outPut;
      }
      return outPut;
    } else if (buttonText == "%") {
      if (isPressedPersendage) {
        if (outPut.contains(".")) {
          num1 = double.parse(outPut);
        } else {
          num1 = int.parse(outPut);
        }

        _outPut = (num1 / 100).toString();
        outPut = _outPut;
        _outPut = '';
        num1 = "0";
        resultOperationText = outPut;
        return outPut;
      }
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "x" ||
        buttonText == "/") {
      if (outPut.contains(".")) {
        num1 = double.parse(outPut);
      } else {
        num1 = int.parse(outPut);
      }
      operator = buttonText;
      resultOperationText = operator;
      isPressedPersendage = false;
      _outPut = '';
    } else if (buttonText == ".") {
      if (_outPut.contains(".")) {
        _outPut = '$_outPut.';
        outPut = _outPut;
        resultOperationText = outPut;
      } else {
        _outPut = _outPut + buttonText;
        outPut = _outPut;
        resultOperationText = outPut;
      }
      return outPut;
    } else if (buttonText == "=") {
      isPressedPersendage = true;
      print(operator);
      switch (operator) {
        case "+":
          _outPut = (num1 + num2).toString();
          break;
        case "-":
          _outPut = (num1 - num2).toString();
          break;
        case "x":
          _outPut = (num1 * num2).toString();
          break;
        case "/":
          _outPut = (num1 / num2).toString();
          break;
        default:
      }

      num1 = 0;
      num2 = 0;
      operator = "";
      if (_outPut.contains(".")) {
        outPut = double.parse(_outPut).toStringAsFixed(2);
      } else {
        outPut = _outPut;
      }
    } else {
      _outPut = _outPut + buttonText;
      outPut = _outPut;

      resultOperationText = resultOperationText + buttonText;
    }
    return outPut;
  }
}
