import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition_study_front/layers/presentation/pages/project/project.dart';
import 'package:nutrition_study_front/layers/presentation/widgets/my_text_input.dart';

class Home extends StatelessWidget {
  static String name = "home";
  static String route = "/$name";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      body: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 40,
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Recent projects",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 100, 50, 15),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MyTextInput(
                        label: "Name",
                        controller: nameController,
                        labelText: "Name",
                        onChanged: (text) {},
                      ),
                      MyTextInput(
                        label: "Description",
                        controller: descriptionController,
                        labelText: "Description",
                        onChanged: (text) {},
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      ElevatedButton(
                        onPressed: () {
                          GoRouter.of(context).replace(Project.route);
                        },
                        child: Text("Create"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
