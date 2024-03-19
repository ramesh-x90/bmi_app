import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BmIInputFelid extends StatelessWidget {
  final Icon prefixIcon;
  final String hintText;

  final TextEditingController controller;

  final String suffix;
  const BmIInputFelid(
      {super.key,
      required this.prefixIcon,
      required this.hintText,
      required this.suffix,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.hardEdge,
        // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                        fontWeight: FontWeight.w900),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: const TextStyle(color: Colors.black54),
                    ),
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: 100,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.blueAccent, // Background color
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Text(
                suffix,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ));
  }
}
