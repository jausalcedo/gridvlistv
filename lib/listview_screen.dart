import 'package:flutter/material.dart';
import 'package:gridv_listv/gridview_screen.dart';

class ListViewScreen extends StatelessWidget {
  ListViewScreen({super.key});

  final List<Map<String, dynamic>> dogs = [
    {
      "name" : "Dog 1",
      "url" : "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/American_Eskimo_Dog.jpg/360px-American_Eskimo_Dog.jpg"
    },
    {
      "name" : "Dog 2",
      "url" : "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/ChowChow2Szczecin.jpg/1200px-ChowChow2Szczecin.jpg"
    },
    {
      "name" : "Dog 3",
      "url" : "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Mops_oct09_cropped2.jpg/640px-Mops_oct09_cropped2.jpg"
    },
    {
      "name" : "Dog 4",
      "url" : "https://upload.wikimedia.org/wikipedia/commons/6/6f/Male_fawn_Boxer_undocked.jpg"
    },
    {
      "name" : "Dog 5",
      "url" : "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Labrador_Retriever_portrait.jpg/360px-Labrador_Retriever_portrait.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ListViewScreen()
                )
              ),
              title: const Text("List View"),
            ),
            ListTile(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GridViewScreen()
                )
              ),
              title: const Text("Grid View"),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: dogs.length,
        itemBuilder: (context, index) => ListTile(
          leading: Image.network(
            dogs[index]["url"],
            fit: BoxFit.fill
          ),
          title: Text(dogs[index]["name"]),
        ),
      ),
    );
  }
}