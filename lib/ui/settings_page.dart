import 'package:crypto_project/common_widgets/settings_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 37,
                  backgroundImage: NetworkImage(
                      "https://static-00.iconduck.com/assets.00/profile-circle-icon-2048x2048-cqe5466q.png"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: 210,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sagdii Rahimov",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        Text(
                          "Don't tell anyone, but I'm Obito Uchiha.",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  color: Colors.white,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Center(child: Text("Scan qr code")),
                              actions: [
                                Image.asset(
                                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/qrcode.png"),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.close),
                                ),
                              ],
                            ));
                  },
                  icon: Icon(Icons.qr_code),
                  iconSize: 40,
                ),
              ],
            ),
          ),
          SettingsWidget(
            icon: Icon(
              size: 38,
              Icons.person,
              color: Colors.white,
            ),
            text: "Privacy, secutrity, change email or number",
            title: "Account",
          ),
          SettingsWidget(
            icon: Icon(
              Icons.chat,
              size: 38,
              color: Colors.white,
            ),
            text: "Theme, wallpapers, chat history",
            title: "Chats",
          ),
          SettingsWidget(
            icon: Icon(
              size: 38,
              Icons.notifications,
              color: Colors.white,
            ),
            text: "Message, group & call tones",
            title: "Notifications",
          ),
          SettingsWidget(
            icon: Icon(
              size: 38,
              Icons.storage,
              color: Colors.white,
            ),
            text: "Network usage, auto-download",
            title: "Storage and data",
          ),
          SettingsWidget(
            icon: Icon(
              size: 38,
              Icons.help,
              color: Colors.white,
            ),
            text: "Help center, contact us, privacy policy",
            title: "Help",
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Change theme"),
                  actions: [
                    SwitchExample(),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close))
                  ],
                ),
              );
            },
            child: SettingsWidget(
              icon: Icon(
                size: 38,
                Icons.theater_comedy,
                color: Colors.white,
              ),
              text: "Help center, contact us, privacy policy",
              title: "Theme",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF5C249),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Log out",
                  style: TextStyle(
                      color: Color(0xff16171D),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
