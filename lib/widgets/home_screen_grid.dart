import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenGrid extends StatelessWidget {
  const HomeScreenGrid({
    super.key,
    required this.gridText,
    required this.gridIcon,
    this.onTap,
  });

  final String gridText;
  final String gridIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1), borderRadius: BorderRadius.circular(5)),
      width: Get.width * 0.2,
      height: Get.width * 0.2,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              width: Get.width * 0.2,
              height: Get.width * 0.2,
              child: Image.asset(gridIcon),
            ),
            Text(gridText, style: GoogleFonts.notoSerifMalayalam()),
          ],
        ),
      ),
    );
  }
}
