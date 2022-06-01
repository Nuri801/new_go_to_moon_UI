import 'package:flutter/material.dart';
import 'package:go_to_moon_ui/pages/home_page.dart';



class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.width,
    required this.color,
    required this.textColor,
    required this.buttonName,
    required this.onPressed,
  }) : super(key: key);

  final double width;
  final Color color;
  final Color textColor;
  final String buttonName;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: MaterialButton(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        onPressed: onPressed,
        minWidth: 300,
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              buttonName,
              style: TextStyle(
                  color: textColor
              ),
            ),
          ],
        ),
      ),
    );
  }
}
