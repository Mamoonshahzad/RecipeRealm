import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '';

class HomeScreenCategoriesWidget extends StatelessWidget {
  final String categoryIcon;
  final String categoryName;
  final VoidCallback? onTap;

  const HomeScreenCategoriesWidget({
    super.key,
    required this.categoryIcon,
    required this.categoryName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            width: Get.width * .4,
            height: Get.width * .37,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(00),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey,
                  ),
                ]),
            child: Container(
                margin: const EdgeInsets.only(top: 5, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        categoryName,
                        style: GoogleFonts.notoSerifMalayalam(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(categoryIcon,
                          width: Get.width * .2, height: Get.width * .2)
                    ]))));
  }
}
