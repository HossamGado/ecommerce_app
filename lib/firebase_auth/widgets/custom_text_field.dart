import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({
    super.key,
    required this.label,
    required this.hint,
    this.obscureText = false,
     this.onChanged,
    required this.controller,
  });

  final String label;
  final String hint;
  bool? obscureText;
  void Function(String)? onChanged;
  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 24),
        TextFormField(
          controller: controller,
          validator: (data) {
            if (data!.isEmpty) {
              return "field is required";
            }
            return null;
          },
          onChanged: onChanged,
          obscureText: obscureText!,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
