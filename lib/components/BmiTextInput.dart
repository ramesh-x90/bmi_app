import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A custom text input field for BMI calculation.
class BmIInputFelid extends StatelessWidget {
  final Icon prefixIcon;
  final String hintText;
  final TextEditingController controller;
  final String suffix;

  /// Constructs a [BmIInputFelid] with the given parameters.
  ///
  /// The [prefixIcon] is the icon displayed at the left side of the input field.
  /// The [hintText] is the text displayed as a hint inside the input field.
  /// The [controller] is the controller for the input field.
  /// The [suffix] is the text displayed at the right side of the input field.
  const BmIInputFelid({
    Key? key,
    required this.prefixIcon,
    required this.hintText,
    required this.controller,
    required this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 20),
            width: 100,
            alignment: Alignment.center,
            child: prefixIcon,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: TextField(
                textAlign: TextAlign.center,
                controller: controller,
                keyboardType: TextInputType.number,
                cursorColor: Colors.black45,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: const TextStyle(color: Colors.black54),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            width: 100,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                topLeft: Radius.circular(5),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Text(
              suffix,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
