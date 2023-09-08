import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:test_fo/provider/user/user_provider.dart';
import 'package:test_fo/ui/sudent/widgets/sdudent_add_screen.dart';
import 'package:test_fo/ui/sudent/widgets/user_item.dart';

class AllMindsPage extends StatelessWidget {
  const AllMindsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return WriteToDbPage();
                  },
                ));
              },
              icon: Icon(Icons.add))
        ],
        title: Text("All user Page"),
      ),
      body: Consumer<MindsViewModel>(
        builder: (context, value, child) {
          if (value.minds == null) {
            context.read<MindsViewModel>().readMinds();
          } else if (value.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: value.minds!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var mind = value.minds![index];
                return MindItem(mind: mind);
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
