import 'package:flutter/material.dart';

class Flexible_Expanded_UI extends StatelessWidget {
  const Flexible_Expanded_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible_Expanded"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Flexible(
          //   flex: 4,
          //   fit: FlexFit.loose,
          //   child: Container(
          //     color: Colors.blue,
          //     width: 100,
          //   ),
          // ),

          Flexible(
            flex: 0,
            fit: FlexFit.loose,
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 150,
            ),
          ),

          Flexible(
            //flex: 1,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.green,
              width: 150,
              height: 150,
            ),
          ),

          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     width: 250,
          //     height: 150,
          //     color: Colors.yellow,
          //   ),
          // ),
          //
          //
          // Expanded(
          //   child: Container(
          //     color: Colors.green,
          //     width: 200,
          //     height: 150,
          //   ),
          // ),
          //
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     width: 250,
          //     height: 150,
          //     color: Colors.yellow,
          //   ),
          // ),

          const Text("test"),
        ],
      ),
    );
  }
}
