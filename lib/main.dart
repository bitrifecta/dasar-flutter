import 'package:flutter/material.dart';
import 'package:pml/models/plan.dart';
import 'package:pml/provider/plan_provider.dart';
import 'package:pml/views/plan_creator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: const PlanCreatorScreen(),
      ),
    );
  }
}
