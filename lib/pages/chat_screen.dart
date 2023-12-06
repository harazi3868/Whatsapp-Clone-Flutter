import 'package:flutter/material.dart';

import '../model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen ({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        elevation: 6.0,
        backgroundColor: Colors.green,
        child: const Icon(Icons.message),
      ),
      body: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context,i){
          return Column(
            children: <Widget>[
              ListTile(
                leading:  CircleAvatar(
                  radius: 25.0,
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage:  NetworkImage(chatData[i].avatarUrl),
                ),
                title:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     Text(
                      chatData[i].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                     Text(
                      chatData[i].time,
                      style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle:  Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child:  Text(
                    chatData[i].message,
                    style:  const TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
                 onTap: () {},
              ),
              const Padding(
                padding:  EdgeInsets.only(left:90.0,right: 10.0),
                child: Divider(),
              )
            ],
          );
        },
      ),
    );
  }
}