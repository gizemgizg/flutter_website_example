import 'package:flutter/material.dart';
import 'package:flutter_website_example/component/app_bar.dart';
import 'package:flutter_website_example/component/clippath.dart';

import '../config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: oxfordBlue,
      body: Stack(
        children: [
          Row(
            children: [
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.75,
                  color: Colors.orange,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height,
                color: oxfordBlue,
              )
            ],
          ),
          Column(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("pizza".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  .copyWith(
                                      color: greyColor,
                                      fontWeight: FontWeight.bold)),
                          Text(
                              "lorem ipsum dolor sit amet consectetur adipiscing \nelit sed do eiusmod tempor incididunt ut labore",
                              style: TextStyle(color: greyColor)),
                          SizedBox(
                            height: 100,
                          )
                        ],
                      ),
                      Spacer(
                        flex: 4,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(75),
                        child: Image.asset(
                          "asset/pizzaimg.jpg",
                          height: 300,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
