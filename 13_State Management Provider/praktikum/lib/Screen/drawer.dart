import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(
            height: 50,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () {
              Navigator.of(context).pushNamed('/contact');
            },
          ),
          ListTile(
            title: const Text('Picture Page'),
            onTap: () {
              Navigator.of(context).pushNamed('/picture');
            },
          ),
        ],
      ),
    );
  }
}