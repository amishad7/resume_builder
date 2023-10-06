import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder/Components/build_options.dart';
import 'package:resume_builder/Global/global.dart';

class Builder_Options extends StatefulWidget {
  const Builder_Options({super.key});

  @override
  State<Builder_Options> createState() => _Builder_OptionsState();
}

class _Builder_OptionsState extends State<Builder_Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      appBar: AppBar(
        backgroundColor: Global.appColor,
        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Resume Workspace",
          style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: Global.appColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Build Options",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                width: MediaQuery.of(context).size.width / 1.03,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...BuildOptions.build.map(
                        (e) {
                          return Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: MediaQuery.of(context).size.height / 14,
                            decoration: const BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  CupertinoIcons.person,
                                  color: Colors.black,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  width:
                                      MediaQuery.of(context).size.width / 1.3,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey, width: 0.5),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${e['name']}",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Global.appColor,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            Navigator.of(context)
                                                .pushNamed('${e['routes']}');
                                          });
                                        },
                                        icon: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Global.appColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
