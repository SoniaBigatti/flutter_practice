import 'package:flutter/material.dart';
import 'package:flutter_practice/common/widgets/custom_circular_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Presionaste',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'veces!',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomCircularButton(
        callback: _counter > 0 ? _decrementCounter : _incrementCounter,
        operacion: _counter > 0 ? 0 : 1,
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_practice/common/widgets/custom_circular_button.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   _handleCounter(bool action) {
//     action ? _counter++ : _counter--;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Presionaste',
//               style: TextStyle(fontSize: 25),
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             const Text(
//               'veces!',
//               style: TextStyle(fontSize: 25),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: CustomCircularButton(
//         callback: _counter > 0 ? _handleCounter(false) : _handleCounter(true),
//         operacion: _counter > 0 ? 0 : 1,
//       ),
//     );
//   }
// }
