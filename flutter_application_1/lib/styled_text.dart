import 'package:flutter/material.dart';

class StyledText extends StatefulWidget {
  const StyledText(this.change, this.txt, {super.key});
  final String txt;
  final Function change;

  @override
  State<StyledText> createState() => _StyledTextState();
}

class _StyledTextState extends State<StyledText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/',
          width: 350,
        ),
        Text(
          widget.txt,
          style: const TextStyle(
            fontFamily: "tiny5",
            fontSize: 35,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            widget.change();
          },
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.black),
          ),
          child: const Text(
            "CLICK ME ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
