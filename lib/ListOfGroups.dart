import 'package:flutter/material.dart';

class grp extends StatelessWidget {
  const grp();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left:18.0, right:18,),
    child: Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Groups",
            style: TextStyle(fontSize: 30,  fontWeight: FontWeight.bold),
          ),
              Icon(
                Icons.add,
                size:30,
                color: Colors.redAccent,
            ),

        ]
    )
    )
    );
  }

}