import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OperationWidget extends StatelessWidget {
  const OperationWidget({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
