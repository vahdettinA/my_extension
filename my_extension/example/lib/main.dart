import 'package:flutter/material.dart';

// ignore: implementation_imports
import 'package:my_extension/src/context_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.theme
          .copyWith(scaffoldBackgroundColor: context.colorScheme.background),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: context.lowPadding,
            child: Container(
              decoration: BoxDecoration(
                  color: context.colorScheme.errorContainer,
                  borderRadius: context.highRadius),
              height: context.dynamicHeight(0.5),
              width: context.dynamicWidth(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
