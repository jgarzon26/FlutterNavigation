import 'package:flutter/material.dart';
import 'package:login_with_figures/figure1.dart';

import 'figure3.dart';

class RowApp extends ColumnApp{

  @override
  Widget build(BuildContext context){
    return(
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text("FIGURE 2", style: TextStyle(fontSize: 30)),
              centerTitle: true,
            ),
            body: Column(
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
                    ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(onPressed: () {Navigator.pop(context);}, child: Icon(Icons.arrow_left)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Combine())
                        );
                      }, child: Icon(Icons.arrow_right)),
                    ),
                  ],
                )
              ],
            )
          ),
        )
    );
  }
}