import 'package:assignment_clone/pages/call_screen.dart';
import 'package:assignment_clone/pages/chat_screen.dart';
import 'package:assignment_clone/pages/status_screen.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:path_provider/path_provider.dart';



class WhatsappHome extends StatelessWidget {
  const WhatsappHome ({Key? key}) : super(key: key);
  
  get controller => null;
  

  void Choices(String choice) {
    // Handle your choice here
    print('You selected: $choice');
  }

  final Constants = const {
    'choices': ['new Group', 'New Broadcast', 'Linked Devices', 'Starred Messages', 'Settings'],
  };

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: Brightness.dark,
      ),
      child: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075e54),
            elevation: 0.0,
            title: Text(
              'WhatsApp',
            //   style: GoogleFonts.roboto(
            //   fontSize: 24,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.white,
            // ),
            ),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {}
                  ),
              IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {}
                  ),

              PopupMenuButton<String>(
                offset: const Offset(0, 50),
                onSelected: Choices,
                itemBuilder: (BuildContext context) {
                  return Constants['choices']!.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              )
            ],
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2.0,
              tabs: [
                Tab(
                  icon: Icon(Icons.groups_3_outlined),
                ),
                Tab(
                  child: Text(
                    'CHATS',
                    style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  
                ),
                Tab(
                  child: Text(
                    'STATUS',
                    style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'CALLS',
                    style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            controller: controller, 
            children:  [ 
               Container(), // This makes the first tab empty
               ChatScreen(),
               StatusScreen(),
               Calls(),
            ]
          ),
        ),
      ),
    );
  }
}