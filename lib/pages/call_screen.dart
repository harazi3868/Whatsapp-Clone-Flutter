import 'package:assignment_clone/model/calls_model.dart';
import 'package:flutter/material.dart';

class Calls extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>new _CallsState();
}
class _CallsState extends State<Calls>{
  @override
  Widget build(BuildContext context) {
   return  ListView.builder(
       itemCount: dummc.length,
       itemBuilder: (context,i)=> Column(
         children: <Widget>[
            const Divider(
             height: 10.0,
           ),
            ListTile(
             leading:  CircleAvatar(
               foregroundColor: Theme.of(context).colorScheme.secondary,
               backgroundColor: Colors.grey,
               backgroundImage:  NetworkImage(dummc[i].imgurl),
             ),
             title:  Text(dummc[i].name,
             style: const TextStyle(fontWeight: FontWeight.bold),
             ),
             subtitle:  Container(
               padding: const EdgeInsets.only(top: 5.0),
               child:  Row(
                 children: <Widget>[
                   dummc[i].st, //type1
                    Text(dummc[i].time,
                   style:  TextStyle(color:Colors.grey,fontSize:15.0)
                  ),
                 ],
               )
             ),
             trailing:  Icon(dummc[i].type.icon,color: Theme.of(context).primaryColor,),      //type 2
           )
         ],
       )
   );
  }
  
}