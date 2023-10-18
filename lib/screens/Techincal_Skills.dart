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
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {},
            child: Text(
              "Fill Up Your Skills",
              style: TextStyle(
                color: Global.TextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
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
          ),
        ],
      ),
    );
  }
}
