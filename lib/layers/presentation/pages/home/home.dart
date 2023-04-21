import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nutrition_study_front/layers/presentation/widgets/MyTextInput.dart';

class Home extends StatelessWidget {
  static String name = "home";
  static String route = "/$name";

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 250,
            color: Colors.pink,
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 100, 50, 50),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("Name"),
                            MyTextInput(
                              controller: nameController,
                              labelText: "Name",
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("Description"),
                            MyTextInput(
                              controller: descriptionController,
                              labelText: "Description",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Create"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
