import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              // Handle navigation to Home
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              // Handle navigation to Settings
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              // Handle navigation to Profile
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              // Handle logout logic
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}