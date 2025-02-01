import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final TextEditingController? controller;
  final bool? required;
  final String? label;
  final String? placeholder;
  final bool isSecureText;

  const InputText(
      {super.key,
      this.required = false,
      this.label,
      this.placeholder,
      this.controller,
      this.isSecureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (label != null)
        Column(
          children: [
            Row(children: [
              Text(label?? ''),
              SizedBox(width: 4),
              if (required == true)
                Text(
                  "*",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                )
            ]),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      CupertinoTextField(
        obscureText: isSecureText,
        controller: controller,
        padding: EdgeInsets.all(16),
        placeholder: placeholder,
      ),

    ]);
  }
}
