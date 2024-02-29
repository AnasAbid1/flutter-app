import 'package:flutter/material.dart';


class ReuseableContainer extends StatelessWidget {
  const ReuseableContainer({
    super.key,
    this.containerText,
    required this.imgUrl,
    required this.containerColor
  });
  final String? containerText;
  final String imgUrl;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      height: 160,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: containerColor,
          image: DecorationImage(image: NetworkImage(imgUrl))
      ),
      child: containerText == null ? Text('') : Text(containerText!),
    );
  }
}