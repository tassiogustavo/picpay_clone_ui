import 'package:flutter/material.dart';

class ButtonTab extends StatelessWidget {
  const ButtonTab(
      {Key? key,
      required this.isSelected,
      required this.text,
      this.color = Colors.black})
      : super(key: key);

  final bool isSelected;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: isSelected
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2, color: color),
              ),
            )
          : null,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(primary: color),
        child: Text(
          text,
          style: TextStyle(color: isSelected ? color : Colors.black),
        ),
      ),
    );
  }
}
