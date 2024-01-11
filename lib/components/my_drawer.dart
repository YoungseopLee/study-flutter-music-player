import 'package:flutter/material.dart';
import '/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // logo
          DrawerHeader(
            child: Icon(Icons.music_note,
                size: 40, color: Theme.of(context).colorScheme.inversePrimary),
          ),

          // home tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0),
            child: ListTile(
              title: const Text("H O M E"),
              leading: const Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
          ),

          // setting tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10.0),
            child: ListTile(
              title: const Text("S E T T I N G"),
              leading: const Icon(Icons.settings),
              onTap: () {
                // Navigator.pop(context) 를 호출하면 Drawer 가 닫힌다.
                Navigator.pop(context);
                //
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
