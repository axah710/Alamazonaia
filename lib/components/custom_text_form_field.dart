// ignore_for_file: public_member_api_docs, sort_constructors_first, body_might_complete_normally_nullable
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.obscureText = false,
    super.key,
    required this.labelText,
    required this.myIcon,
    required this.onChanged,
  });
  String labelText;
  IconData myIcon;
  Function(String)? onChanged;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: TextFormField(
        obscureText: obscureText!,
        style: const TextStyle(color: Colors.black),
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Icon(myIcon),
          hintStyle: const TextStyle(color: Colors.white),
          label: Text(labelText),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              128,
            ),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
