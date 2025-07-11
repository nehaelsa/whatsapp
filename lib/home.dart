import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/community.dart';
import 'package:whatsapp/updates.dart';

class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {
  int index=0;
  List<Widget>pages=[Chat(),Update(),Community(),Call()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.more_vert),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 10),
          Icon(Icons.add_circle),
          SizedBox(width: 10),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
        setState(() {
          index=value;
        });
      },
        selectedItemColor: Colors.green.shade500,unselectedItemColor: Colors.green.shade200,showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update),label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.people_outlined),label: "Community"),
          BottomNavigationBarItem(icon: Icon(Icons.call_outlined),label: "Calls")
        ],
      ),body: pages[index],
    );
  }
}
