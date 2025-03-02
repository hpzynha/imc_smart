import 'package:flutter/material.dart';
import 'package:imc_smart/theme/colors.dart';

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
                Icon(
                  Icons.scale,
                  size: 48,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 28,
                ),
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
            leading: Icon(Icons.calculate),
            title: Text('O que é IMC?'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Sobre'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
