import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Items/theme_provider.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  void _toggleDarkMode() {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    themeProvider.toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Account'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              // user profile image
              backgroundImage: AssetImage('assets/Images/picture.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'John Doe', // Replace with actual user name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // TODO: Navigate to the settings screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Language'),
              onTap: () {
                // TODO: Show language selection dialog
              },
            ),
            SwitchListTile(
              title: Text('Dark Mode'),
              value: themeProvider.currentTheme == ThemeMode.dark,
              onChanged: (value) {
                _toggleDarkMode();
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle logout and navigate back to splash screen
                Navigator.pushNamedAndRemoveUntil(context, '/splash', (route) => false);
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
