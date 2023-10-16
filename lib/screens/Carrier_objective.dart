import 'package:flutter/material.dart';
import 'package:resume_builder/Global/global.dart';

class Carrier_Objective extends StatefulWidget {
  const Carrier_Objective({super.key});

  @override
  State<Carrier_Objective> createState() => _Carrier_ObjectiveState();
}

class _Carrier_ObjectiveState extends State<Carrier_Objective> {
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
          "Carrier Objective",
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
                height: MediaQuery.of(context).size.height / 4.0,
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
                      "Carrier Objective",
                      style: TextStyle(
                          letterSpacing: -1,
                          fontSize: 23,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 45),
                          hintText: 'Description',
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
                    Column(
                      children: [
                        const Text(
                          "Current Designation",
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          "(Experienced Candidate) ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Software Engineer',
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
