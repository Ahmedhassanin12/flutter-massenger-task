import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Massenger extends StatefulWidget {
  const Massenger({Key? key}) : super(key: key);

  @override
  State<Massenger> createState() => _MassengerState();
}

class _MassengerState extends State<Massenger> {
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          titleSpacing: 15,
          title: Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pps.whatsapp.net/v/t61.24694-24/289786587_991295971568962_4691164374411225434_n.jpg?ccb=11-4&oh=badad47b7198e1fd299cc620e9b2b60f&oe=62D42841'),
                ),
              ),
              Center(
                child: Text(
                  "chats",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )
            ],
          ),
          actions: [
            CircleAvatar(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  )),
              backgroundColor: Colors.grey[800],
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.black,
                  )),
              backgroundColor: Colors.grey[800],
            ),
            SizedBox(
              width: 15,
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey[600]),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.search),
                  Text("search")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ActiveNow(name: "ahmed"),
                  SizedBox(width: 5),
                  ActiveNow(name: "mostafa"),
                  SizedBox(width: 5),
                  ActiveNow(name: "mostafa"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "ahmed"),
                  SizedBox(width: 5),
                  ActiveNow(name: "sdsadd"),
                  SizedBox(width: 5),
                  
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "ahmed"),
                  SizedBox(width: 5),
                  ActiveNow(name: "sdsadd"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "momen"),
                  SizedBox(width: 5),
                  ActiveNow(name: "ahmed"),
                  SizedBox(width: 5),
                  ActiveNow(name: "sdsadd"),
                  SizedBox(width: 5),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
              child: SingleChildScrollView(
                 scrollDirection: Axis.vertical,

            child: Column(
              children: [
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                SizedBox(
                  height: 15,
                ),
                Chat(),
                
              ],
            ),
          )),
        ]),
      ),
    );
  }
}

class ActiveNow extends StatelessWidget {
  //  ActiveNow({Key? key, required name}) : super(key: key);

  String name;
  ActiveNow({required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://pps.whatsapp.net/v/t61.24694-24/289786587_991295971568962_4691164374411225434_n.jpg?ccb=11-4&oh=badad47b7198e1fd299cc620e9b2b60f&oe=62D42841'),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 5,
              )
            ],
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 7,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 5,
              ),
            ],
          )
        ],
      ),
      SizedBox(width: 10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ahmed ibrahim",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "helllooooo",
                style: TextStyle(color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                child: SizedBox(
                  width: 3,
                ),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              ),
              Text(
                "02:00pm",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      )
    ]);
  }
}
