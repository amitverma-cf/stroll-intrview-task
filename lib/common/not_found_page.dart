import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'route_names.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Screen Not Found'),
          const SizedBox(height: 15),
          Theme(
            data: ThemeData.dark(),
            child: FilledButton(
              onPressed: () => Modular.to.navigate(RouteName.slash),
              child: const Text("Go Back"),
            ),
          ),
        ],
      )),
    );
  }
}
