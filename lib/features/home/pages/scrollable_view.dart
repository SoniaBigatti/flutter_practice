import 'package:flutter/material.dart';

class ScrollableView extends StatefulWidget {
  const ScrollableView({super.key});

  @override
  State<ScrollableView> createState() => _ScrollableViewState();
}

class _ScrollableViewState extends State<ScrollableView> {
  var alumnos = [
    {'nombre': 'Jose', 'edad': 18},
    {'nombre': 'Pepe', 'edad': 18},
    {'nombre': 'Josesito', 'edad': 18},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrollable'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 15,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.red,
              child: const ListTile(
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.forward),
                title: Text('Jose Chatruc'),
                subtitle: Text('Nacimiento: 10/10/1980 - Rosario'),
              ),
            ),
          );
        },
      ),
    );
  }
}
