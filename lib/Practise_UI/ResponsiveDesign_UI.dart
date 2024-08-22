import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ResponsiveDesignUI extends StatefulWidget {
  const ResponsiveDesignUI({super.key});

  @override
  State<ResponsiveDesignUI> createState() => _ResponsiveDesignUIState();
}

class _ResponsiveDesignUIState extends State<ResponsiveDesignUI> {

  @override
  void initState() {
    super.initState();

  }

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
              LayoutBuilder(
                builder: (context, BoxConstraints constraints) {
                  if(constraints.maxWidth < 640){
                    return Column(
                      children: [
                        Text("This is a Phone"),
                      ],
                    );
                  }
                  else if(constraints.maxWidth >= 640 && constraints.maxWidth < 1007){
                    return Text("This is a Tablet");
                  }
                  else{
                    return Text("This is a Laptop/Destop");
                  }
                },
              ),

              ElevatedButton(
                onPressed: (){
                  if(orientation == Orientation.portrait){
                    SystemChrome.setPreferredOrientations([
                      DeviceOrientation.landscapeLeft,
                      DeviceOrientation.landscapeRight,
                    ]);
                  }
                  else{
                    SystemChrome.setPreferredOrientations([
                      DeviceOrientation.portraitUp,
                      DeviceOrientation.portraitDown
                    ]);
                  }
                },
                child: Text("Go ${orientation == Orientation.portrait ? "Landscape":"Portrait"}")
              )
            ],
          );
        },
      ),
      // body: OrientationBuilder(
      //   builder: (context, Orientation orientation) {
      //     if(orientation == Orientation.portrait){
      //       return Column(
      //         children: [
      //           Wrap(
      //             crossAxisAlignment: WrapCrossAlignment.center,
      //             alignment: WrapAlignment.center,
      //             spacing: 11,
      //             runSpacing: 5,
      //             children: [
      //               Text("Lorem Ipsum "),
      //               Text("text of thindustry. "),
      //               Text("Lorem Ipsum has been the industry's "),
      //               Text("standard dummy text ever since the 1500s, when "),
      //               Text("an unknown printer took a galley of ty type specimen book"),
      //
      //               Text(orientation.name)
      //             ],
      //           )
      //         ],
      //       );
      //     }
      //     else{
      //       return Center(
      //         child: Text("This is Horizontal mode"),
      //       );
      //     }
      //   },
      // ),
    );
  }
}
