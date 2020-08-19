import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'SingleList.dart';

class Listss extends StatelessWidget{
  final String title;
  final String last_edit;

  const Listss({Key key, @required this.title, @required this.last_edit }):
        assert(title!= null),
        assert(last_edit!= null),
        super(key: key);

  @override
  Widget build(BuildContext Context) {
    return  Padding(
      padding: const EdgeInsets.only(left:38.0, right:38,bottom: 8),
      child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
      InkWell(
        //highlightColor:Colors.redAccent,
      //borderRadius: BorderRadius.circular(20),
        //splashColor: Colors.redAccent,
        onTap: (){
    print("Tapped");
    Navigator.push(Context, new MaterialPageRoute(
        builder: (context) => Single_List(title: title)
    ));
    //Colors.redAccent,

        },

                 child:  Container(
                    height: 80,
                    //color: Colors.lightGreenAccent,
                     child: Column(

                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                              title,
                              //textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

                        ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:18.0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                last_edit,
                                //textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 18, color: Colors.grey),

                              ),
                            ),
                          ),


                        ]
                        ),

                      decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      //shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          //offset: const Offset(3.0, 3.0),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ),
                      ]
                  ),
                  ),
      ),
      ]
    )
                     );




          ////decoration: BoxDecoration(   //this changes the shape of each box in this example but we are required to show round edges in inkwell
            //color: Colors.green[100],
            //borderRadius: BorderRadius.all(Radius.circular(50)),

  }
}
//List<String> title_list=[];
//List<String> lastedit_list=[];
List<String> title_list= ['groceries', 'Rozmarra ka saman', 'Dairy'];
List<String> lastedit_list= ['1 day ago', '15 hrs ago', '1 week ago'];

class list_route extends StatelessWidget{
  const list_route();
  @override
  Widget build(BuildContext Context){
    Widget _buildListWidgets(List<Widget> listoflist) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) => listoflist[index],
        itemCount: listoflist.length,
      );
    }
    final listoflist1 = <Listss>[];
    for(int i=0; i<title_list.length; i++){
      listoflist1.add(Listss(title: title_list[i], last_edit: lastedit_list[i]));
    }
    final listoflist2 = <Listss>[];

    final listView =  Column(
         children: <Widget>[
           if(title_list.length==0)
             Container(
                 height:290,
                 child: Align(
                   alignment: Alignment.center,
                   child: Text("No active list present", style: TextStyle(
                   //color: Colors.redAccent,
                   fontSize: 36,
                   fontWeight: FontWeight.bold),),
                 ),),
           if(title_list.length>1)
           Container(
           height:290,
             child: _buildListWidgets(listoflist1)),
    if(title_list.length>3)
             InkWell(
               //splashColor:Colors.redAccent,
               child:
                   Text("View More", style: TextStyle(
                   color: Colors.redAccent,
                   fontSize: 16,
                   fontWeight: FontWeight.bold),),
               onTap: () {
                print("Tapped");
                   },


             ),

           //Expanded(child: _buildListWidgets(listoflist2))
    ],
    );
    return Scaffold(
      body: listView,
    );

  }
}