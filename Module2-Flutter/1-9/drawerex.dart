import 'package:flutter/material.dart';

class DrawerEx extends StatefulWidget
{
  const DrawerEx({super.key});

  @override
  State<DrawerEx> createState() => _DrawerExState();
}

class _DrawerExState extends State<DrawerEx>
{
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>
  [
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title:Text("Drawer Example"),),
    body: Center
      (
            child: Column
              (
                children:
                [
                  Text("Welcome to Tops Technologies")
                ],
              ),
      ),
      drawer: Drawer
        (
          child: ListView
            (
              children:
              [
                  UserAccountsDrawerHeader(accountName: Text("Dhyey"), accountEmail:Text("d@gmail.com"),currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj"),),),
                  ListTile(leading: Icon(Icons.place),title: Text("Place1"),onTap: ()
                  {
                    Navigator.of(context).pop();
                  },),
                  Divider(),
                  ListTile(leading: Icon(Icons.place),title: Text("Place1"),onTap: ()
                  {
                    Navigator.of(context).pop();
                  },),
                  Divider(),
                  ListTile(leading: Icon(Icons.place),title: Text("Place1"),onTap: ()
                  {
                    Navigator.of(context).pop();
                  },),

              ],
            ),
        ),
      bottomNavigationBar: BottomNavigationBar(items:
      [
        BottomNavigationBarItem
          (
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green
          ),
        BottomNavigationBarItem
          (
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green
        ),
        BottomNavigationBarItem
          (
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green
        ),
      ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5  ),
    );
  }

  void _onItemTapped(int value)
  {
    setState(()
    {
      _selectedIndex = value;
    });
  }
}
