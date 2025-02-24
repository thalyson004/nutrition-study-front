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
                                  Expanded(
                                    child: MyTextInput(
                                      label: "Activity",
                                      controller: activityController,
                                      labelText: "Activity",
                                    ),
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
                          color: Colors.green,
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
                                          child: Text(
                                            "Gráfico",
                                            textAlign: TextAlign.center,
                                          ),
                                        )),
                                        // Tipos satisfação
                                        Container(
                                          color: Colors.greenAccent,
                                          width: 200,
                                          child: Text(
                                            "Tipo de satisfação",
                                            textAlign: TextAlign.center,
                                          ),
                                        )
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
                                        child: Text(
                                          "Gerar recomendação",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child:
                                              Container(child: Text("Botão")))
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
                              color: Colors.red,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(color: Colors.green)),
                                  Container(
                                    height: 50,
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
