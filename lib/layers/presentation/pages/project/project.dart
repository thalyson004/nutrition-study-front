import 'package:flutter/material.dart';

import '../../widgets/MyTextInput.dart';

class Project extends StatelessWidget {
  static String name = "project";
  static String route = "/$name";

  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController weightController = TextEditingController();
    TextEditingController heightController = TextEditingController();
    TextEditingController activityController = TextEditingController();
    TextEditingController graphController = TextEditingController();
    TextEditingController satisfactionController = TextEditingController();

    TextEditingController addFoodController = TextEditingController();
    TextEditingController addTimeController = TextEditingController();
    TextEditingController addGramsController = TextEditingController();

    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.pinkAccent,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text("Name"),
                                  MyTextInput(
                                    controller: nameController,
                                    labelText: "Name",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("Description"),
                                  MyTextInput(
                                    controller: descriptionController,
                                    labelText: "Description",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("Name"),
                                  MyTextInput(
                                    controller: nameController,
                                    labelText: "Name",
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              color: Colors.blue,
                                            )),
                                            Container(
                                              color: Colors.orange,
                                              width: 100,
                                            ),
                                            Container(
                                              color: Colors.brown,
                                              width: 100,
                                            ),
                                            Container(
                                              color: Colors.yellowAccent,
                                              width: 25,
                                              height: 25,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: -5,
                                      left: 10,
                                      child: Container(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        child: const Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text("Add"),
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
                      Expanded(
                        child: Container(
                          color: Colors.green,
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    color: Colors.purpleAccent,
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.deepOrangeAccent,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }
}
