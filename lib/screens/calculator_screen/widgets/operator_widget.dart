import 'package:calculator/screens/calculator_screen/calculator_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OperatorWidget extends StatelessWidget {
  const OperatorWidget({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CalculatorScreenController>();

    return InkWell(
      onTap: () => controller.setOperatorInput(
        value: label,
      ),
      splashColor: Colors.orange.withOpacity(0.25),
      highlightColor: Colors.orange.withOpacity(0.25),
      customBorder: const CircleBorder(),
      child: Container(
        height: 15.w,
        width: 15.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 26.px,
          color: Colors.orange,
        ),
      ),
    );
  }
}
