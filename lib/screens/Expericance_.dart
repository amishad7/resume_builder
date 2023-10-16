import 'package:flutter/material.dart';
import 'package:resume_builder/Global/global.dart';

class Experience_ extends StatefulWidget {
  const Experience_({super.key});

  @override
  State<Experience_> createState() => _Experience_State();
}

class _Experience_State extends State<Experience_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Global.TextColor,
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: Global.appColor,
        title: Text(
          "Education",
          style: TextStyle(
            color: Global.TextColor,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              20,
            ),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Container(
        color: Colors.indigo.shade50,
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 23),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 23),
                padding: const EdgeInsets.only(left: 23, top: 23, bottom: 20),
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Course/Degree",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'B. Tech Information Technology',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const Text(
                      "School/College/Institute",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Bhagavan Mahavir University',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const Text(
                      "School/College/Institute",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: '70% (or) 7.0 CGPA',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const Text(
                      "Year Of Pass",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: '2023',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
