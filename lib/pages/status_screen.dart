import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            mini: true,
            isExtended: true,
            onPressed: () {},
             child: Icon(
              Icons.mode_edit,
              size: 18.0,
              color: Color(0xff075e54),
            ),
            elevation: 8.0,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.photo_camera),
            elevation: 6.0,
            backgroundColor: Colors.green,
          )
        ],
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          const Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 28.0,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRUy1yYqslMpHNsrQy_kJ_utXtVaQKuV9ICI9H9xhJ-7T_BxGPF675NLn2irBeHPd3sG6lAjjPCn3CM20I"
                          ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 10.0,
                      child: Icon(
                        Icons.add,
                        size: 18.0,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "My Status",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Tap to add status update",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15.0,
                        color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          Container(
            height: 40.0,
            color: Colors.black12,
            child: const Padding(
              padding:
                   EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0),
              child: Text(
                "Recent updates",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Colors.white60),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0, right: 10.0, top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                recentStatus("Harvey Spectre", "Just Now",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwXdaELd6L5Oss-HaKkFtBMHl9SmjWhP4ukw&usqp=CAU"
                    ),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                ),
                recentStatus("Sweety", "8 minutes ago",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9z8KtQwQBkaOIawxitKsO4PgzNfbhN3UJ3w&usqp=CAU"
                    ),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                ),
                recentStatus("Abhijit", "30 minutes ago",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1NcQgfKKsaJ7m8E4H763HI5ztbb-a3_D48AcMOaSCXfC356SFHIIRFVmWFhp6NEi9qnc&usqp=CAU"),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                )
              ],
            ),
          ),
          Container(
            height: 40.0,
            color: Colors.black12,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0),
              child: Text(
                "Viewed updates",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Colors.white60),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0, right: 10.0, top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                viewedStatus("Harvey Spectre", "Just Now",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXFffWkL3KbJyMfoPP2nPbgFK4LH7srvVXDw&usqp=CAU"),
                Padding(
                  padding: const EdgeInsets.only(left: 76.0, right: 6.0),
                  child: Divider(),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget recentStatus(String name, String time, String imgUrl) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              border: Border.all(width: 2.0, color: Colors.green[300]!)),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: CircleAvatar(
              radius: 28.0,
              backgroundImage: NetworkImage(imgUrl),
            ),
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              time,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                  color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }

  Widget viewedStatus(String name, String time, String imgUrl) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              border: Border.all(width: 2.0, color: Colors.grey)),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: CircleAvatar(
              radius: 28.0,
              backgroundImage: NetworkImage(imgUrl),
            ),
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              time,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                  color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
