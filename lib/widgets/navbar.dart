import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white38,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/loo.png'),
              ),
            ), child: null,
          ),
          ListTile(
            leading: const Icon(Icons.home_rounded),
            title: const Text('Welcome'),
            onTap: () {
              Navigator.of(context).pushNamed('/welcome');
            },
          ),
          ListTile(
            leading: const Icon(Icons.tour_rounded),
            title: const Text('Tourist locations'),
            onTap: () {
              Navigator.of(context).pushNamed('/Tourist_locations.dart');
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today_rounded),
            title: const Text('Calander'),
            onTap: () {
              Navigator.of(context).pushNamed('/calander.dart');
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_exchange_rounded),
            title: const Text('currency_converter'),
            onTap: () {
              Navigator.of(context).pushNamed('/curruncy.dart');
            },
          ),
          ListTile(
            leading: const Icon(Icons.verified_user_rounded),
            title: const Text('Profile'),
            onTap: () {
              Navigator.of(context).pushNamed('/profile.dart');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_rounded),
            title: const Text('Settings'),
            onTap: () {
              Navigator.of(context).pushNamed('/settings.dart');
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback_rounded),
            title: const Text('Feedback'),
            onTap: () {
              Navigator.of(context).pushNamed('/feedback.dart');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text('Logout'),
            onTap: () {
              // TODO: Implement the logout functionality
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/login.dart', (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }
}
