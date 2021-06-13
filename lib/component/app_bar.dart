import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website_example/component/default_button.dart';
import 'package:flutter_website_example/component/menu_item.dart';

import '../config.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(46.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16))
          ]),
      child: Row(
        children: [
          Image.asset(
            "asset/pizza_icon.png",
            height: 30,
            width: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Text("gizza".toUpperCase(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Spacer(),
          MenuItemWidget(
            title: "Menu",
          ),
          MenuItemWidget(
            title: "Pricing",
          ),
          MenuItemWidget(
            title: "About",
          ),
          MenuItemWidget(
            title: "Contact",
          ),
          MenuItemWidget(
            title: "Login",
          ),
          // ignore: deprecated_member_use
          DefaultButton(
            title: "Get Started",
            onpress: () {},
          )
        ],
      ),
    );
  }
}
