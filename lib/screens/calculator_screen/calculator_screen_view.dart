import 'package:calculator/constants/calculator_icons.dart';
import 'package:calculator/screens/calculator_screen/widgets/number_widget.dart';
import 'package:calculator/screens/calculator_screen/widgets/operation_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CalculatorScreenView extends StatelessWidget {
  const CalculatorScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
              width: 100.w,
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
                        onTap: () {},
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
                      const OperationWidget(
                        icon: Calculator.backspace,
                      ),
                      const OperationWidget(
                        icon: Calculator.percent,
                      ),
                      const OperationWidget(
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
                      OperationWidget(
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
                      OperationWidget(
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
                      OperationWidget(
                        icon: Calculator.plus,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const OperationWidget(
                        icon: Calculator.minus_slash_plus,
                      ),
                      const NumberWidget(
                        label: "0",
                      ),
                      InkWell(
                        onTap: () {},
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
                          onTap: () {},
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
    );
  }
}
