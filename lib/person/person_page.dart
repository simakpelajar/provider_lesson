import 'package:d_input/d_input.dart';
import 'package:d_method/d_method.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/person/person_provider.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  final edtName = InputSpec();
  final edtAge = InputSpec();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Person'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            children: [
              Expanded(
                child: DInput(
                  inputSpec: edtName,
                  titleSpec: const TitleSpec(text: "Name"),
                  boxSpec: const BoxSpec(
                    color: Color.fromARGB(255, 171, 203, 229),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<PersonProvider>().updateName(edtName.controller!.text);
                },
                icon: const Icon(Icons.save),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: DInput(
                  inputSpec: edtAge,
                  titleSpec: const TitleSpec(text: "Age"),
                  boxSpec: const BoxSpec(
                    color: Color.fromARGB(255, 187, 222, 250),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  int age = int.parse(edtAge.controller!.text);
                  context.read<PersonProvider>().updateAge(age);
                },
                icon: const Icon(Icons.save),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Builder(
            builder: (context) {
              DMethod.log('Build Name');
              String name = context.watch<PersonProvider>().data.name;
              return Text('Name: $name');
            },
          ),
          Builder(
            builder: (context) {
              DMethod.log('Build Name');
              int age = context.watch<PersonProvider>().data.age;
              return Text('Age: $age');
            },
          ),
        ],
      ),
    );
  }
}
