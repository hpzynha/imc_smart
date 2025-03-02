import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/pages/home_page.dart';
import 'package:imc_smart/providers/imc_provider.dart';
import 'package:imc_smart/theme/style.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const IMCSmart());
}

class IMCSmart extends StatelessWidget {
  const IMCSmart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ImcProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: HomePage(),
      ),
    );
  }
}
