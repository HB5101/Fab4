import 'package:flutter/material.dart';

class Single_List extends StatelessWidget{
  final String title;

  const Single_List({Key key, @required this.title}):
        assert(title!= null),
        super(key: key);
  @override
  Widget build(BuildContext Context) {
    return Padding(
      padding: const EdgeInsets.only(left:18.0, right:18,),
      child: Container(
          child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 40,  fontWeight: FontWeight.bold, ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Mahi",
                      style: TextStyle(fontSize: 30,  fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]
          )
      ),
    );
  }
}