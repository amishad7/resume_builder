import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder/Global/global.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Global.appColor,
        centerTitle: true,
        toolbarHeight: 100,
        title: Text(
          "Resume ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Global.TextColor,
            fontSize: 24,
            letterSpacing: 1,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('builder_options');
        },
        backgroundColor: Global.appColor,
        child: const Icon(
          CupertinoIcons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/7486/7486744.png'),
                    ),
                    Text(
                      "Nothing is here ",
                      style: TextStyle(
                        color: Global.appColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
