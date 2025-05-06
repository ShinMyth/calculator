import 'package:calculator/constants/calculator_icons.dart';
import 'package:calculator/screens/calculator_screen/calculator_screen_controller.dart';
import 'package:calculator/screens/calculator_screen/widgets/number_widget.dart';
import 'package:calculator/screens/calculator_screen/widgets/operator_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CalculatorScreenView extends StatelessWidget {
  const CalculatorScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CalculatorScreenController());

    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              Container(
                height: 50.h,
                width: 100.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      controller.input.value,
                      style: TextStyle(
                        color: controller.result.value.isEmpty
                            ? Colors.black
                            : Colors.black54,
                        fontSize:
                            controller.result.value.isEmpty ? 40.px : 30.px,
                      ),
                    ),
                    if (controller.result.value.isNotEmpty) ...[
                      Text(
                        controller.result.value,
                        style: TextStyle(
                          fontSize: 40.px,
                        ),
                        textAlign: TextAlign.right,
                        maxLines: 1,
                      ),
                    ],
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 100.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () => controller.allClear(),
                          splashColor: Colors.orange.withOpacity(0.25),
                          highlightColor: Colors.orange.withOpacity(0.25),
                          customBorder: const CircleBorder(),
                          child: Container(
                            height: 15.w,
                            width: 15.w,
                            alignment: Alignment.center,
                            child: Text(
                              "AC",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 25.px,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => controller.backspace(),
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
                              Calculator.backspace,
                              size: 26.px,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => controller.percentage(),
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
                              Calculator.percent,
                              size: 26.px,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        const OperatorWidget(
                          label: "÷",
                          icon: Calculator.divide,
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NumberWidget(
                          label: "7",
                        ),
                        NumberWidget(
                          label: "8",
                        ),
                        NumberWidget(
                          label: "9",
                        ),
                        OperatorWidget(
                          label: "×",
                          icon: Calculator.multiply,
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NumberWidget(
                          label: "4",
                        ),
                        NumberWidget(
                          label: "5",
                        ),
                        NumberWidget(
                          label: "6",
                        ),
                        OperatorWidget(
                          label: "−",
                          icon: Calculator.minus,
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NumberWidget(
                          label: "1",
                        ),
                        NumberWidget(
                          label: "2",
                        ),
                        NumberWidget(
                          label: "3",
                        ),
                        OperatorWidget(
                          label: "+",
                          icon: Calculator.plus,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () => controller.minusSlashPlus(),
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
                              Calculator.minus_slash_plus,
                              size: 26.px,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        const NumberWidget(
                          label: "0",
                        ),
                        InkWell(
                          onTap: () => controller.setDotInput(),
                          splashColor: Colors.orange.withOpacity(0.25),
                          highlightColor: Colors.orange.withOpacity(0.25),
                          customBorder: const CircleBorder(),
                          child: Container(
                            height: 15.w,
                            width: 15.w,
                            alignment: Alignment.center,
                            child: Text(
                              ".",
                              style: TextStyle(
                                fontSize: 25.px,
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.orange.withOpacity(0.75),
                          shape: const CircleBorder(),
                          child: InkWell(
                            onTap: () => controller.equal(),
                            splashColor: Colors.white.withOpacity(0.25),
                            highlightColor: Colors.white.withOpacity(0.25),
                            customBorder: const CircleBorder(),
                            child: Container(
                              height: 15.w,
                              width: 15.w,
                              alignment: Alignment.center,
                              child: Icon(
                                Calculator.equal,
                                size: 26.px,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
