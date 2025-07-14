import 'package:flutter/material.dart';

class MyAppMethod extends StatelessWidget {
  const MyAppMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Log out"),
                content: const Text(
                  "Are you sure you want to log out?",
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("No"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Yes"),
                  ),
                ],
              );
            },
          );
        },
        icon: const Icon(Icons.login),
        label: const Text("Login"),
      ),
    );
  }
}
