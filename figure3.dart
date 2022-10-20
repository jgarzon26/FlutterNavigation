import 'package:flutter/material.dart';
import 'package:login_with_figures/figure1.dart';

class Combine extends ColumnApp{

  Widget build(BuildContext context){
    return(
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text("FIGURE 3", style: TextStyle(fontSize: 30)),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.ltr,
                  children: [
                    createContainer(Colors.red, ContainerType.row),
                    createContainer(Colors.blue, ContainerType.row),
                    createContainer(Colors.yellow, ContainerType.row),
                    createContainer(Colors.brown, ContainerType.row)
                  ],
                ),
                createContainer(Colors.red, ContainerType.column),
                createContainer(Colors.blue, ContainerType.column),
                createContainer(Colors.brown, ContainerType.column),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(onPressed: () {Navigator.pop(context);}, child: Icon(Icons.arrow_left)),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}