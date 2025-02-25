import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/MyDropDownMenu.dart';
import '../../widgets/MyTextInput.dart';
import '../home/home.dart';

class Project extends StatefulWidget {
  static String name = "project";
  static String route = "/$name";

  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController activityController = TextEditingController();
  String? activitySelected;
  final List<String> activityTypes = [
    "Sedentary",
    "Low active",
    "Active",
    "Very active",
    "Vigorously Active",
  ];
  TextEditingController graphController = TextEditingController();
  String? graphSelected;
  final List<String> graphTypes = ["List", "Bar", "Circle"];

  TextEditingController satisfactionController = TextEditingController();

  TextEditingController addFoodController = TextEditingController();
  TextEditingController addTimeController = TextEditingController();
  TextEditingController addGramsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // Parte de cima
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Esquerda
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              MyTextInput(
                                label: "Name",
                                controller: nameController,
                                labelText: "Name",
                              ),
                              MyTextInput(
                                label: "Description",
                                controller: descriptionController,
                                labelText: "Description",
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: MyTextInput(
                                      label: "Age",
                                      controller: ageController,
                                      labelText: "Age",
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: MyTextInput(
                                      label: "Weight",
                                      controller: weightController,
                                      labelText: "Weight",
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: MyTextInput(
                                      label: "Height",
                                      controller: heightController,
                                      labelText: "Height",
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Activity",
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      MyDropDownMenu(
                                        selectedValue: activitySelected,
                                        controller: activityController,
                                        entries: activityTypes,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                    ],
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
                      // Direita
                      Expanded(
                        child: Container(
                          // Graficos e gerar recomendação
                          child: Column(
                            children: [
                              // Gráfico
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    color: Colors.yellowAccent,
                                    child: Row(
                                      children: [
                                        // Graficos
                                        Expanded(
                                            child: Container(
                                          color: Colors.lightBlue,
                                          child: const Text(
                                            "Gráfico",
                                            textAlign: TextAlign.center,
                                          ),
                                        )),
                                        // Tipos satisfação
                                        Container(
                                            color: Colors.greenAccent,
                                            width: 200,
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 50,
                                                  color: Colors.green,
                                                ),
                                                MyDropDownMenu(
                                                  selectedValue: graphSelected,
                                                  controller: graphController,
                                                  entries: graphTypes,
                                                ),
                                                Container(
                                                  height: 50,
                                                  color: Colors.pinkAccent,
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  )),
                              // Gerar recomendação
                              Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 4,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              log("Generate Recommendations");
                                            },
                                            child: const Text(
                                                "Generate Recommendations"),
                                          )),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                          backgroundColor: Colors.black26,
                                        ),
                                        child: const Icon(Icons.settings),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            // Parte de Baixo
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  child: Row(
                    children: [
                      // Alimentos da dieta
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      // Recomendações
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              child: Column(
                            children: [
                              Expanded(child: Container(color: Colors.green)),
                              Container(
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        GoRouter.of(context)
                                            .replace(Home.route);
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red.shade400),
                                      child: const Text("Return"),
                                    ),
                                    const SizedBox(width: 16),
                                    ElevatedButton(
                                      onPressed: () {
                                        GoRouter.of(context)
                                            .replace(Project.route);
                                      },
                                      child: Text("Save"),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.green.shade400),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
