import 'package:flutter/material.dart';
import 'package:resume_builder/Global/global.dart';

class Contact_info extends StatefulWidget {
  const Contact_info({super.key});

  @override
  State<Contact_info> createState() => _Contact_infoState();
}

class _Contact_infoState extends State<Contact_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Global.backGroundColor,
      appBar: AppBar(
        backgroundColor: Global.appColor,
        title: const Text(
          "Resume WorkSpace ",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Global.appColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(19),
                    bottomRight: Radius.circular(19),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Global.initialIndex = 0;
                          });
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 31,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Global.appColor,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(19),
                                    //bottomRight: Radius.circular(19),
                                  ),
                                ),
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                    fontSize:
                                        (Global.initialIndex == 0) ? 19 : 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            (Global.initialIndex == 0)
                                ? Expanded(
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade100,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.blue.shade100,
                                            spreadRadius: 2,
                                            blurRadius: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : Expanded(
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      decoration: BoxDecoration(
                                        color: Global.appColor,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Global.initialIndex = 1;
                          });
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 31,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Global.appColor,
                                  borderRadius: const BorderRadius.only(
                                    //  bottomLeft: Radius.circular(19),
                                    bottomRight: Radius.circular(19),
                                  ),
                                ),
                                child: Text(
                                  "Photo",
                                  style: TextStyle(
                                    fontSize:
                                        (Global.initialIndex == 1) ? 19 : 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            (Global.initialIndex == 1)
                                ? Expanded(
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade100,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.blue.shade100,
                                            spreadRadius: 2,
                                            blurRadius: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : Expanded(
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      decoration: BoxDecoration(
                                        color: Global.appColor,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: Colors.indigo.shade50,
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 43),
                      padding: const EdgeInsets.only(
                          top: 20, left: 10, right: 10, bottom: 29),
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                height: MediaQuery.of(context).size.height / 17,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                height: MediaQuery.of(context).size.height / 17,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                height: MediaQuery.of(context).size.height / 17,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                height: MediaQuery.of(context).size.height / 17,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                height: MediaQuery.of(context).size.height / 17,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
