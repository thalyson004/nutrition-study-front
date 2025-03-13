import 'dart:collection';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition_study_front/layers/data/api/nutrition_api.dart';

import '../../widgets/add_meal.dart';
import '../../widgets/diet.dart';
import '../../widgets/my_drop_down_menu.dart';
import '../../widgets/my_text_input.dart';
import '../../widgets/nutrients_graph.dart';
import '../home/home.dart';

class Project extends StatefulWidget {
  static String name = "project";
  static String route = "/$name";

  const Project({super.key});

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

  Map<String, double>? nutrients = <String, double>{};

  @override
  void initState() {
    super.initState();

    initVariables();
  }

  Future<void> initVariables() async {
    NutritionAPI.getNutrientsQuantities().then(
      (ans) {
        setState(
          () {
            nutrients = ans;
          },
        );
      },
    );
    // print(nutrients);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                                Text("Activity"),
                                SizedBox(width: 8),
                                MyDropDownMenu(
                                  selectedValue: activitySelected,
                                  controller: activityController,
                                  entries: activityTypes,
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: AddMeal(),
                                ),
                              ),
                              Positioned(
                                top: -8,
                                left: 10,
                                child: Container(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: const Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      "Add",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Direita
                  Expanded(
                    child: Column(
                      children: [
                        // Gráfico
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              // Graficos
                              Expanded(
                                child: NutrientsGraph(
                                  nutrients: nutrients,
                                  nutrientsRecommended: nutrients,
                                ),
                              ),
                              // Tipos satisfação
                              //TODO: Selecionar tipo de gráfico
                              // Container(
                              //   color: Colors.greenAccent,
                              //   width: 200,
                              //   child: Column(
                              //     children: [
                              //       Container(height: 50, color: Colors.green),
                              //       MyDropDownMenu(
                              //         selectedValue: graphSelected,
                              //         controller: graphController,
                              //         entries: graphTypes,
                              //       ),
                              //       Container(
                              //         height: 50,
                              //         color: Colors.pinkAccent,
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
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
                                  child: const Text("Generate Recommendations"),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  backgroundColor: Colors.pink,
                                  shadowColor: Colors.black,
                                ),
                                child: const Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Parte de Baixo
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Alimentos da dieta
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(child: Diet()),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ),
                ),
                // Recomendações
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.green)),
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  GoRouter.of(context).replace(Home.route);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red.shade400,
                                ),
                                child: const Text("Return"),
                              ),
                              const SizedBox(width: 16),
                              ElevatedButton(
                                onPressed: () {
                                  GoRouter.of(context).replace(Project.route);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green.shade400,
                                ),
                                child: Text("Save"),
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
        ],
      ),
    );
  }
}
