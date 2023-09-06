import 'package:advanced_widgets_app/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppTheme(
      color: Colors.grey,
      child: Builder(builder: (innerContext) {
        Color scaffoldColor = AppTheme.of(innerContext)!.color;

        return Scaffold(
          body: const Center(
            child: Text('Lab 14.6'),
          ),
          backgroundColor: scaffoldColor,
          floatingActionButton: FloatingActionButton(
            child: const Text('Change color'),
            onPressed: () => setState(() {
              scaffoldColor = Colors.amberAccent;
            }),
          ),
        );
      }),
    );
  }
}
