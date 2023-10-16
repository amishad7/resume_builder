import 'package:flutter/material.dart';
import 'package:resume_builder/Global/global.dart';

class Technical_skills extends StatefulWidget {
  const Technical_skills({super.key});

  @override
  State<Technical_skills> createState() => _Technical_skillsState();
}

class _Technical_skillsState extends State<Technical_skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(23),
            bottomRight: Radius.circular(23),
          ),
        ),
        backgroundColor: Global.appColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Technical Skills",
          style: TextStyle(
            color: Global.TextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.indigo.shade50,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade50,
                  spreadRadius: 1,
                  blurRadius: 23,
                  offset: Offset(2, 2),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(34),
              ),
            ),
            height: MediaQuery.of(context).size.height / 19,
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              "Add your skills",
              style: TextStyle(
                color: Global.appColor,
                fontSize: 23,
                fontWeight: FontWeight.w600,
                letterSpacing: -1.3,
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 12, left: 19, right: 19, bottom: 23),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 100,
                  offset: Offset(0.4, 0.4),
                ),
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
