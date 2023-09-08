import 'package:flutter/material.dart';
import 'package:local_db/local_db.dart';
import 'package:provider/provider.dart';
import 'package:test_fo/provider/arithmetic/dicrement/dicrement_provider.dart';
import 'package:test_fo/provider/arithmetic/increment/increment_providrer.dart';
import 'package:test_fo/provider/counter/counter_provider.dart';
import 'package:test_fo/provider/user/user_provider.dart';
import 'package:test_fo/repostory/user_repostory.dart';
import 'package:test_fo/ui/home/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => IncrementProvider()),
        ChangeNotifierProvider(create: (_) => DicrementProvider()),
        ChangeNotifierProvider(
            create: (_) => MindsViewModel(
                  mindRepository: MindRepository(db: LocalDatabase()),
                )),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
