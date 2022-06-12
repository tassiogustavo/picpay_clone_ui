import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key, required this.isSelected, required this.icon,required this.text}) : super(key: key);

  final bool isSelected;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: SizedBox(
        height: 40,
        child: Column(
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.green : Colors.black,
            ),
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.green : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
