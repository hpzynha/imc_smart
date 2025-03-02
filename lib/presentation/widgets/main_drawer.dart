import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/pages/about_page.dart';
import 'package:imc_smart/presentation/pages/how_it_works_page.dart';
import 'package:imc_smart/theme/colors.dart';
import 'package:imc_smart/theme/style.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: AppColors.buttonGradient,
            ),
            child: Row(
              children: [
                Text(
                  'IMC Smart!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              size: 30,
            ),
            title: Text(
              'Como Funciona',
              style: AppTextStyles.subTitle,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HowItWorksPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate_outlined, size: 30),
            title: Text(
              'Sobre',
              style: AppTextStyles.subTitle,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
        ],
      ),
    );
  }
}
