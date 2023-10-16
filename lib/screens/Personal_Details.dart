import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resume_builder/Global/global.dart';

class Personal_Details extends StatefulWidget {
  const Personal_Details({super.key});

  @override
  State<Personal_Details> createState() => _Personal_DetailsState();
}

class _Personal_DetailsState extends State<Personal_Details> {
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
          "Personal Details",
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
                padding: const EdgeInsets.only(left: 23, top: 23, bottom: 20),
                height: MediaQuery.of(context).size.height / 5.5,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "DOB",
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 23,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Date / Month / Year',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 23),
                padding: const EdgeInsets.only(left: 23, top: 23, bottom: 20),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Marital Status",
                      style: TextStyle(
                          //letterSpacing: 2,
                          fontSize: 23,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: 'Single',
                                activeColor: Global.appColor,
                                groupValue: Global.MarritalValue,
                                onChanged: (val) {
                                  setState(() {
                                    Global.MarritalValue = val;
                                  });
                                }),
                            const Text("Single"),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: 'Married',
                                activeColor: Global.appColor,
                                groupValue: Global.MarritalValue,
                                onChanged: (val) {
                                  log('${Global.MarritalValue}');

                                  setState(() {
                                    Global.MarritalValue = val;
                                  });
                                }),
                            const Text("Married"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 23),
                padding: const EdgeInsets.only(left: 23, top: 23, bottom: 20),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Languages Known",
                      style: TextStyle(
                          //letterSpacing: 2,
                          fontSize: 23,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Global.appColor,
                              onChanged: (val) {
                                setState(() {
                                  Global.isEnglish = val!;
                                  if (Global.isEnglish != false) {
                                    Global.english = "English";
                                  } else {
                                    Global.english = '';
                                  }
                                });
                              },
                              value: Global.isEnglish,
                            ),
                            const Text("English"),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Global.appColor,
                              onChanged: (val) {
                                setState(() {
                                  Global.ishindi = val!;
                                  if (Global.ishindi != false) {
                                    Global.hindi = "Hindi";
                                  } else {
                                    Global.hindi = '';
                                  }
                                });
                              },
                              value: Global.ishindi,
                            ),
                            const Text("Hindi"),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Global.appColor,
                              onChanged: (val) {
                                setState(() {
                                  Global.isGujarati = val!;
                                  if (Global.isGujarati != false) {
                                    Global.gujarati = "Gujarati";
                                  } else {
                                    Global.gujarati = '';
                                  }
                                });
                              },
                              value: Global.isGujarati,
                            ),
                            const Text("Gujarati"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 23),
                padding: const EdgeInsets.only(left: 23, top: 23, bottom: 20),
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Nationality",
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
                          hintText: 'Indian',
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
