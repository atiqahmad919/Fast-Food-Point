import 'package:fds2/components/my_drawer_tile.dart';
import 'package:flutter/material.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
              text: 'H 0 M E',
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),
          MyDrawerTile(
              text: 'S E T T I N G S',
              icon: Icons.settings,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage()))),
          Spacer(),
          MyDrawerTile(
              text: 'L O G O U T',
              icon: Icons.logout,
              onTap: () => Navigator.pop(context)),
          SizedBox(height: 25)
        ],
      ),
    );
  }
}
