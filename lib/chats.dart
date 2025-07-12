import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: Icon(Icons.more_vert),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      title: Text("WhatsApp"),
      actions: [
        Icon(Icons.camera_alt),
        SizedBox(width: 15),
        Icon(Icons.add_circle),
        SizedBox(width: 15),
      ],
    ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://static.vecteezy.com/system/resources/previews/026/000/147/non_2x/girl-icon-design-free-vector.jpg",
              ),
            ),title: Text("Jilna"),subtitle: Text("Hai"),trailing: Text("9:15 AM"),
          ),ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://static.vecteezy.com/system/resources/previews/026/000/147/non_2x/girl-icon-design-free-vector.jpg",
              ),
            ),title: Text("Santu"),subtitle: Text("Hyy"),trailing: Text("8:15 AM"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://static.vecteezy.com/system/resources/previews/026/000/147/non_2x/girl-icon-design-free-vector.jpg",
              ),
            ),title: Text("Swru"),subtitle: Text("how"),trailing: Text("7:15 AM"),
          ),
        ],
      ),
    );
  }
}
