import 'package:flutter/material.dart';

class XoScreen extends StatelessWidget {
  const XoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              buildContainer(),
               buildContainer(),
                buildContainer(),

            ],

            
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: [buildContainer(), buildContainer(), buildContainer()]),
          SizedBox(height: 10),
          Row(children: [buildContainer(), buildContainer(), buildContainer()]),



         

         
        ],
      ),
    );
  }
}

Widget buildContainer(){
  return Container(
            width: 200,
            height: 230,
            decoration: BoxDecoration(
           // color: Colors.amber
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
color: Colors.black,
width: 2
                  ),
                  color: Colors.amber
                ),
child: Text("X",style: TextStyle(fontSize: 40),),
              ),
              
            ],
          ),
          );

}