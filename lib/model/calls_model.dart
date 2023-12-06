import 'package:assignment_clone/model/chat_model.dart';
import 'package:flutter/material.dart';

class CallModel{
  final String imgurl;
  final String name;
  final String time;
  final Icon type;
  final Icon st;
  CallModel({required this.name,required this.time,required this.imgurl,required this.st,required this.type});
}
List<CallModel> dummc=[ CallModel(
  name:  chatData[5].name,
  time: "Today, 3:11PM",
  imgurl: chatData[0].avatarUrl,
  st:  const Icon(Icons.call_made,color: Colors.green),
  type: const Icon(Icons.phone,)
),
 CallModel(
    name: chatData[3].name,
    time: "Today, 8:21AM",
    imgurl: chatData[3].name,
    st:  const Icon(Icons.call_received,color: Colors.green),
    type: const Icon(Icons.videocam)
),
 CallModel(
    name:chatData[2].name,
    time: "Today, 11:32AM",
    imgurl: chatData[2].name,
    st: const Icon(Icons.call_received,color: Colors.red),
    type: const Icon(Icons.phone)
),
];