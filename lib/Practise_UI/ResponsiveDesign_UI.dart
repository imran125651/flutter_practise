import 'package:flutter/material.dart';

class ResponsiveDesignUI extends StatefulWidget {
  const ResponsiveDesignUI({super.key});

  @override
  State<ResponsiveDesignUI> createState() => _ResponsiveDesignUIState();
}

class _ResponsiveDesignUIState extends State<ResponsiveDesignUI> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.aspectRatio);
    print(MediaQuery.of(context).size.flipped);
    print(MediaQuery.of(context).devicePixelRatio);

    Size size = MediaQuery.of(context).size;
    if(size.width < 640){
      print(" This is a Phone");
    }
    else if(size.width > 640 && size.width < 1008){
      print("This is tablet");
    }
    else{
      print("LAPTOP/DESKTOP");
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Design"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Column(
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 11
                4,
                runSpacing: 5,
                children: [
                  Text("Lorem Ipsum "),
                  Text("text of thindustry. "),
                  Text("Lorem Ipsum has been the industry's "),
                  Text("standard dummy text ever since the 1500s, when "),
                  Text("an unknown printer took a galley of ty type specimen book"),

                  Text(orientation.name)
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
