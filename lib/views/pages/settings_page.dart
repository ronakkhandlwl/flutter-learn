import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings Page")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Divider(color: Colors.teal, thickness: 2.0, endIndent: 200,),
            ElevatedButton(
              onPressed: () {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text("Snackbar"),
                //     behavior: SnackBarBehavior.floating,
                //   ),
                // );
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text("Alert Content"),
                      title: Text("Alert title"),
                      actions: [
                        FilledButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Close"),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: Text("Open snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}
