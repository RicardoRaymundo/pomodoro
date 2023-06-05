import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  const CronometroBotao({
    super.key,
    required this.icon,
    required this.text,  this.click,
  });

  final IconData icon;
  final String text;
  final void Function()? click;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        textStyle: TextStyle(
          fontSize: 20,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 25,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
