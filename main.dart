import 'package:flutter/material.dart';
import 'account.dart'; // Import your other page
import 'package:task_1/account.dart';

void main() {
  runApp(SettingsApp());
}

class SettingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  final List<SettingItem> settings = [
    SettingItem("Account", Icons.person, Colors.pink),
    SettingItem("Notifications", Icons.notifications, Colors.purple),
    SettingItem("Privacy", Icons.lock, Colors.blue),
    SettingItem("Help Center", Icons.help, Colors.green),
    SettingItem("About us", Icons.info, Colors.orange),
    SettingItem("Send us", Icons.send, Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FD),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top header row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new, color: Colors.grey[700]),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.pinkAccent,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Settings',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              // Settings list
              ...settings.map(
                (item) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: item.color.withOpacity(0.1),
                    child: Icon(item.icon, color: item.color),
                  ),
                  title: Text(
                    item.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    if (item.title == "Account") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Account()),
                      );
                    }
                    // Add more navigation for other items if needed
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingItem {
  final String title;
  final IconData icon;
  final Color color;

  SettingItem(this.title, this.icon, this.color);
}
