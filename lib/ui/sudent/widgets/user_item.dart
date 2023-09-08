import 'package:flutter/material.dart';
import 'package:local_db/model/user_model.dart';
import 'package:provider/provider.dart';
import 'package:test_fo/provider/user/user_provider.dart';

class MindItem extends StatelessWidget {
  MindModel mind;
  MindItem({required this.mind, Key? key}) : super(key: key);

  TextEditingController mindCtrl = TextEditingController();
  TextEditingController author = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mindCtrl.text = mind.mind;
    author.text = mind.author;
    return ListTile(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Bekor qilish")),
              TextButton(
                  onPressed: () {
                    context.read<MindsViewModel>().deleteMind(mind.mind);
                    Navigator.pop(context);
                  },
                  child: Text("Ha")),
            ],
            title: const Text("Rostdan ham o'chirmoqchimisiz?"),
          ),
        );
      },
      title: Text(mind.mind),
      subtitle: Text(mind.author),
      trailing: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Bekor qilish")),
                TextButton(
                    onPressed: () {
                      context.read<MindsViewModel>().updateMind(
                          MindModel(author: author.text, mind: mindCtrl.text),
                          mind.mind);
                      Navigator.pop(context);
                    },
                    child: Text("Yangilash")),
              ],
              content: SizedBox(
                height: 160,
                child: Column(
                  children: [
                    TextField(
                      controller: mindCtrl,
                      decoration: const InputDecoration(
                          label: Text("name"), border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                      controller: author,
                      decoration: const InputDecoration(
                          label: Text("lastname"),
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        icon: const Icon(Icons.edit),
      ),
    );
  }
}
