import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.color,
    required this.textColor,
    required this.buttonName,
    required this.onPressed,
  }) : super(key: key);

  final Color color;
  final Color textColor;
  final String buttonName;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: MaterialButton(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        onPressed: onPressed,
        minWidth: 200,
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
