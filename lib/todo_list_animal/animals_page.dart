import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/todo_list_animal/todo_provider.dart';

class AnimalsPage extends StatelessWidget {
  const AnimalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animals Page")),
      body: Consumer<TodoProvider>(
        builder: (context, todoProvider, child) {
          List<String> animals = todoProvider.animals;
          if (animals.isEmpty) {
            return Center(child: const Text("Empty"));
          }
          return ListView.builder(
            itemCount: animals.length,
            itemBuilder: (context, index) {
              String animal = animals[index];
              return ListTile(
                leading: CircleAvatar(child: Text("${index + 1}")),
                title: Text(animal),
                trailing: IconButton(onPressed: (){
                  context.read<TodoProvider>().remove(index);
                }, icon: const Icon(Icons.delete)),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          buildAddAnimal(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  buildAddAnimal(BuildContext context) {
    final edtAnimal = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Add new Animal"),
          content: TextField(controller: edtAnimal),
          actions: [
            ElevatedButton(
              onPressed: () {
                context.read<TodoProvider>().add(edtAnimal.text);
                Navigator.pop(context);
              },
              child: const Text("Add"),
            ),
          ],
        );
      },
    );
  }
}
