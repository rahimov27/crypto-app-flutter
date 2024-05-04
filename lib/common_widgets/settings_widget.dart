import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget(
      {super.key, required this.text, required this.title, required this.icon});

  final String title;
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(padding: const EdgeInsets.only(right: 22), child: icon),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
