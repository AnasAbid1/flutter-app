import 'package:flutter/material.dart';

class TayyabForm extends StatelessWidget {
  const TayyabForm({
    super.key,
    required this.tayyabLabel,
    required this.tayyabHintText,
    required this.tayyabFormError,
    required this.tayyabController,
    required this.tayyabFormIcon
  });


  final String? tayyabLabel;
  final String? tayyabHintText;
  final String? tayyabFormError;
  final TextEditingController tayyabController;
  final Icon tayyabFormIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: tayyabController,
        validator: (value) {
          if (value == null || value.isEmpty || value == " ") {
            return tayyabFormError;
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
            label: Text(tayyabLabel!),
            hintText: tayyabHintText,
            prefixIcon: tayyabFormIcon,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 4))),
      ),
    );
  }
}