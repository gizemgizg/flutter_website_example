import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final Function onpress;
  DefaultButton({
    this.title,
    this.onpress,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(26),
        child: FlatButton(
            padding: EdgeInsets.all(20),
            color: Colors.orange,
            onPressed: () {},
            child: Text(title.toUpperCase())),
      ),
    );
  }
}
