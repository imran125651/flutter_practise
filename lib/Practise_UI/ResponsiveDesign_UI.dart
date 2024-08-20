import 'package:flutter/material.dart';

class ResponsiveDesignUI extends StatefulWidget {
  const ResponsiveDesignUI({super.key});

  @override
  State<ResponsiveDesignUI> createState() => _ResponsiveDesignUIState();
}

class _ResponsiveDesignUIState extends State<ResponsiveDesignUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Design"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("Lorem Ipsum is simply dummy"),
              Text("text of the printing and typesetting industry. "),
              Text("Lorem Ipsum has been the industry's "),
              Text("standard dummy text ever since the 1500s, when"),
              Text("an unknown printer took a galley of type and scrambled it to make a type specimen book"),
            ],
          )
        ],
      ),
    );
  }
}
