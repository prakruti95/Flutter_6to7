import 'package:flutter/material.dart';

class ListviewEx extends StatefulWidget {
  const ListviewEx({super.key});

  @override
  State<ListviewEx> createState() => _ListviewExState();
}

class _ListviewExState extends State<ListviewEx> {
  List Name = ["Divyraj", "Dhyey"];
  List Number = ["9988776655", "7788994455"];

  List filteredName = [];
  List filteredNumber = [];

  @override
  void initState() {
    super.initState();
    filteredName = Name;
    filteredNumber = Number;
  }

  void filterSearch(String query)
  {
    List searchName = [];
    List searchNumber = [];

    for (int i = 0; i < Name.length; i++)
    {
      if (Name[i].toString().toLowerCase().contains(query.toLowerCase()) ||
          Number[i].toString().contains(query)) {
        searchName.add(Name[i]);
        searchNumber.add(Number[i]);
      }
    }

    setState(() {
      filteredName = searchName;
      filteredNumber = searchNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List With Search")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) => filterSearch(value),
              decoration: InputDecoration(
                hintText: "Search name or number...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredName[index], style: TextStyle(fontSize: 20.00)),
                  subtitle: Text(filteredNumber[index], style: TextStyle(fontSize: 20.00)),
                  trailing: Icon(Icons.call),
                );
              },
              itemCount: filteredName.length,
            ),
          ),
        ],
      ),
    );
  }
}
