import 'package:flutter/material.dart';

import 'figure2.dart';

enum ContainerType {row, column}

class ColumnApp extends StatelessWidget{
  const ColumnApp({super.key});

  @override
  Widget build(BuildContext context){

    return (
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text("FIGURE 1", style: TextStyle(fontSize: 30)),
              centerTitle: true,
            ),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  createContainer(Colors.red, ContainerType.column),
                  createContainer(Colors.blue, ContainerType.column),
                  createContainer(Colors.brown, ContainerType.column),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(onPressed: () {
                          Navigator.pop(context);
                        },
                            child: Icon(Icons.arrow_left)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RowApp())
                          );
                        }, child: Icon(Icons.arrow_right)),
                      ),
                    ],
                  )
                ]
            ),
          ),
        )
    );
  }

  Padding createContainer(MaterialColor color, ContainerType containerType){

    Padding padding;

    switch(containerType){
      case ContainerType.column:
        padding = Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Container(
              height: 130,
              width: 100,
              color: color
          ),
        );
        break;
      case ContainerType.row:
        padding = Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                height: 60,
                width: 60,
                color: color
            )
        );
        break;
    }

    return padding;
  }
}