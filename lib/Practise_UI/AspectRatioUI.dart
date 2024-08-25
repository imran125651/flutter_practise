import 'package:flutter/material.dart';

class AspectRatioUI extends StatelessWidget {
  const AspectRatioUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aspect Ratio"),
        centerTitle: true,
      ),
      body: Column(
        children: [

          AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              color: Colors.pink,
            ),
          )

        ],
      ),
    );
  }
}
