import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextInputFormField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Icon icon;

  const CustomTextInputFormField(
      {Key? key, required this.hintText,required this.labelText,required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        textInputAction: TextInputAction.go,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            hoverColor: Colors.black,
            suffixIcon: icon,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
      ),
    );
  }
}
