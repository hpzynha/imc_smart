import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/widgets/main_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC Smart'),
      ),
      drawer: MainDrawer(),
      body: Column(),
    );
  }
}
