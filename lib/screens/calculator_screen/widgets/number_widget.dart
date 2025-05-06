import 'package:calculator/screens/calculator_screen/calculator_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CalculatorScreenController>();

    return InkWell(
      onTap: () => controller.setNumberInput(
        value: label,
      ),
      splashColor: Colors.orange.withOpacity(0.25),
      highlightColor: Colors.orange.withOpacity(0.25),
      customBorder: const CircleBorder(),
      child: Container(
        height: 15.w,
        width: 15.w,
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 25.px,
          ),
        ),
      ),
    );
  }
}
