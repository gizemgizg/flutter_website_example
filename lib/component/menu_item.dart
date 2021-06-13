import 'package:flutter/material.dart';
import '../config.dart';

class MenuItemWidget extends StatelessWidget {
  final String title;
  final Function onpress;
  const MenuItemWidget({this.title, this.onpress});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Text(title.toUpperCase(), style: TextStyle(color: greyColor)),
      ),
    );
  }
}
