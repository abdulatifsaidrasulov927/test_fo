import 'package:flutter/material.dart';
import 'package:local_db/model/user_model.dart';
import 'package:provider/provider.dart';
import 'package:test_fo/provider/user/user_provider.dart';

class WriteToDbPage extends StatelessWidget {
  WriteToDbPage({Key? key}) : super(key: key);
  TextEditingController mind = TextEditingController();
  TextEditingController author = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Write to Db"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: mind,
              decoration: const InputDecoration(
                  label: Text("Quote"), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 24,
            ),
            TextField(
              controller: author,
              decoration: const InputDecoration(
                  label: Text("Author"), border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          context
              .read<MindsViewModel>()
              .addMind(MindModel(author: author.text, mind: mind.text));

          Navigator.pop(context);
        },
      ),
    );
  }
}
