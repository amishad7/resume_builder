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
          "Experience",
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
        padding: const EdgeInsets.symmetric(vertical: 23),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 23),
                padding: const EdgeInsets.only(left: 23, top: 23, bottom: 20),
                height: MediaQuery.of(context).size.height / 1.9,
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
                      "Company Name",
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
                          hintText: 'New Enterprise, San Francisco',
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
                          hintText: 'Quality Test Engineer',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const Text(
                      "Roles (optional)",
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
                          hintText:
                              'Working with team members to come up with new concepts and product analysis..',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 23),
                padding: const EdgeInsets.only(left: 23, top: 23, bottom: 20),
                height: MediaQuery.of(context).size.height / 4.9,
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
                      "Employed status",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'Previously Employed',
                          activeColor: Global.appColor,
                          groupValue: Global.isValue,
                          onChanged: (val) {
                            Global.isValue = val;
                          },
                        ),
                        Text("Previously Employed"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'Currently Employed',
                          activeColor: Global.appColor,
                          groupValue: Global.isValue,
                          onChanged: (val) {
                            Global.isValue = val;
                          },
                        ),
                        Text("Currently Employed"),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 10, right: 20, left: 20),
                      padding: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height / 4.9,
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
                            'Date Joined',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 170.0,
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'DD/MM/YY',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, right: 20),
                      padding: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height / 4.9,
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
                            'Date Exit',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 170.0,
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'DD/MM/YY',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
