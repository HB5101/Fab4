import 'package:flutter/material.dart';
import 'ListOfLists.dart';
import 'ListOfGroups.dart';
import 'SingleList.dart';

class custom_app_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  var divheight =MediaQuery.of(context).size.height;
  return Container(
    height: divheight/2*0.3,
    color: Colors.redAccent,
    child: Column(
     children: const <Widget>[
       Padding(
         padding: const EdgeInsets.only(top: 28.0),
         child: Align(
           alignment: Alignment.bottomLeft,
         child: Icon(
           Icons.image,
           size:40
         ),
       ),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
    child: Align(
    alignment: Alignment.bottomLeft,
         child: Text(
           "Hello HB!",
           style: TextStyle(fontSize: 24),
         ),
       ),
       ),
       ]
    )
  );
  }
}

class list_count extends StatelessWidget{
  final list_no;
  const list_count({Key key, @required this.list_no, }):
        assert(list_no!= null),
        super(key: key);

  @override
  Widget build(BuildContext Context) {
    return Padding(
      padding: const EdgeInsets.only(left:18.0, right:18,),
      child: Container(
        child: Column(
            children: [
              Text(
                "You've got $list_no open lists!",
                style: TextStyle(fontSize: 40,  fontWeight: FontWeight.bold, ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                child: Text(
                  "My Lists",
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


class HomePage extends StatelessWidget {
 @override
 Widget build(BuildContext Context) {
   return Scaffold(
     body: new Container(
         child: new Column(
             children: [
               custom_app_bar(),
               list_count(list_no: 7,),
               DefaultTabController(
                 length: 3,
                 child: Column(
                   children: <Widget>[
                     Container(
                       constraints: BoxConstraints.expand(height: 40),
                       child: TabBar(
                           indicator: BoxDecoration(color: Colors.transparent),
                           //indicatorColor: Colors.redAccent,
                           labelColor: Colors.red,
                           labelStyle: TextStyle(
                               fontSize: 20, fontWeight: FontWeight.bold),
                           unselectedLabelColor: Colors.grey,
                           tabs: [
                             Tab(text: "Active"),
                             Tab(text: "Personal"),
                             Tab(text: "Completed")
                           ]),
                     ),
                     Container(
                       height: 320,

                       child: TabBarView(children: [
                         Container(
                           child: list_route(),


                         ),
                         Container(
                           //height: 80,
                           child: list_route(),

                         ),
                         Container(
                           //height: 80,
                           child: Text("Kuch Complete to Kar",
                             style: TextStyle(
                                 fontSize: 40, fontWeight: FontWeight.bold),
                           ),
                         ),

                       ]),

                     ),
                   ],
                 ),
               ),
               grp(),
               //list_route(),
             ]
         )


     ),
     floatingActionButton: Align(
       alignment: Alignment(1, 0.9),
       child: FloatingActionButton(
         onPressed: () {
           Navigator.push(Context, new MaterialPageRoute(
               builder: (context) => Single_List(title: 'List1')
           ));
         },
         child: Icon(Icons.add, size: 40),
         backgroundColor: Colors.red,

       ),
     ),
   );
 }
}

void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage()
      ),
  );
}
