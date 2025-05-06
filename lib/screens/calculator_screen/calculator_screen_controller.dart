import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreenController extends GetxController {
  RxString input = "".obs;

  RxString result = "".obs;

  void setNumberInput({required String value}) {
    input.value += value;
  }

  void setDotInput() {
    if (input.value.isNotEmpty) {
      input.value += ".";
    }
  }

  void setOperatorInput({required String value}) {
    if (input.value.isNotEmpty) {
      if (endsWithSpecificSpecialChar(input.value)) {
        input.value = input.value.substring(0, input.value.length - 1) + value;
      } else {
        input.value += value;
      }
    }
  }

  void percentage() {
    if (input.value.isNotEmpty) {
      input.value = divideLastNumberAtEndBy100(input.value);
    }
  }

  void minusSlashPlus() {
    if (input.value.isNotEmpty) {
      input.value = toggleLastNumberSign(input.value);
    }
  }

  void backspace() {
    if (input.value.isNotEmpty && result.isEmpty) {
      input.value = input.value.substring(0, input.value.length - 1);
    }
  }

  void allClear() {
    input.value = "";
    result.value = "";
  }

  void equal() {
    if (input.value.isNotEmpty) {
      if (endsWithSpecificSpecialChar(input.value)) {
        input.value = input.value.substring(0, input.value.length - 1);
      }

      String finalInput = input.value;
      finalInput = finalInput.replaceAll("÷", "/");
      finalInput = finalInput.replaceAll("×", "*");
      finalInput = finalInput.replaceAll("−", "-");

      Parser p = Parser();
      Expression exp = p.parse(finalInput);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      if (eval == eval.toInt()) {
        result.value = eval.toInt().toString();
      } else {
        result.value = eval.toString();
      }
    }
  }

  // Chat GPT Functions
  bool endsWithSpecificSpecialChar(String input) {
    // Check if string ends with one of: ÷ × − +
    RegExp specialCharRegex = RegExp(r'[÷×−+]$');

    return specialCharRegex.hasMatch(input);
  }

  String divideLastNumberAtEndBy100(String input) {
    RegExp regExp =
        RegExp(r'(\d+(\.\d+)?)$'); // Match integer or decimal at end
    Match? match = regExp.firstMatch(input);

    if (match != null) {
      String numberStr = match.group(1)!;
      double number = double.parse(numberStr) / 100;
      String replaced = input.replaceFirst(regExp, number.toString());
      return replaced;
    } else {
      return input; // No number at end, return as-is
    }
  }

  String toggleLastNumberSign(String input) {
    // Match the last number (integer or decimal), with or without a negative sign
    RegExp regExp = RegExp(r'(-?\d*\.?\d+)$');
    Match? match = regExp.firstMatch(input);

    if (match != null) {
      String number = match.group(1)!;

      String toggled = number.startsWith('-')
          ? number.substring(1) // Remove minus to make it positive
          : '-$number'; // Add minus to make it negative

      return input.replaceFirst(regExp, toggled);
    }

    return input; // Return unchanged if no number is found
  }
  // Chat GPT Functions
}
