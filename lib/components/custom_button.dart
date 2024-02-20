// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onTap,
    super.key,
    required this.buttonName,
  });
  String buttonName;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              128,
            ),
            color: Colors.grey.shade400,
          ),
          child: Center(
            child: Text(
              buttonName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
