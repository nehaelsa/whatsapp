import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.more_horiz),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("Calls"),
        actions: [Icon(Icons.add_circle), SizedBox(width: 15)],
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              filled: true,
              prefixIcon: Icon(Icons.search_rounded),
              fillColor: Colors.black12,
              labelText: "Search",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("Favourites"),
          ListTile(
            leading: Icon(Icons.add_circle),
            title: Text("Add Favourite"),
          ),
          Text("Recent"),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://static.vecteezy.com/system/resources/previews/026/000/147/non_2x/girl-icon-design-free-vector.jpg",
              ),
            ),
            title: Text("Home"),
            subtitle: Row(
              children: [Icon(Icons.call_missed_outgoing),
                Text("Today,6:45 pM"),
              ],
            ),
            trailing: Icon(Icons.info_outline),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://static.vecteezy.com/system/resources/previews/026/000/147/non_2x/girl-icon-design-free-vector.jpg",
              ),
            ),
            title: Text("Malavika"),
            subtitle:Row(children: [Icon(Icons.call_made),Text("Yesterday,6:45 pM"),],),
            trailing: Icon(Icons.info_outline),
          ),
        ],
      ),
    );
  }
}
