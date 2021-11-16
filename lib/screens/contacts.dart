import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'chat.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.solidComment,
                  size: 25.0,
                ),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_2_fill,size: 25,),
                label: 'People',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            iconSize: MediaQuery.of(context).size.width*.07,
            //onTap: ,
            elevation: 5
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: <Widget>[
          //     IconButton(
          //         icon: Icon(
          //           Icons.chat,
          //           size: 25.0,
          //         ),
          //         onPressed: () {}
          //     ),
          //     SizedBox(
          //       width: 40.0,
          //     ),
          //     IconButton(
          //         icon: Icon(
          //           Icons.people,
          //           //color: Colors.grey,
          //           size: 30.0,
          //         ),
          //         onPressed: () {Navigator.pushNamed(context, '/people');}),
          //   ],
          // ),
        ),
        appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.white,
          title: const Text(
            "Chats",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.0),
          ),
          //backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () => Navigator.pushNamed(context, '/profile'),
            child: const Padding(
              padding: EdgeInsets.only(top: 8.0, left: 16.0, bottom: 8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    "images/m1.jpg"),
                radius: 25.0,
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: const Icon(Icons.camera_alt, color: Colors.black,size: 20,),
                  ),

                  SizedBox(width: MediaQuery.of(context).size.width*.029),

                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: const Icon(Icons.edit, color: Colors.black,size: 20,),
                  )
                ],
              ),
            ),
          ],
          elevation: 0.0,
        ),

        body: Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 16.0, bottom: 8.0),
          child: ListView(
            children: <Widget>[
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     Row(
              //       children: <Widget>[
              //         Stack(
              //           children: const <Widget>[
              //             Padding(
              //               padding: EdgeInsets.all(4.0),
              //               child: CircleAvatar(
              //                 radius: 19,
              //                 backgroundImage: AssetImage("images/m1.jpg"),
              //               ),
              //             ),
              //
              //             // Positioned(
              //             //   right: 2,
              //             //   child: Container(
              //             //   decoration: BoxDecoration(
              //             //     color: Colors.red,
              //             //     borderRadius: BorderRadius.circular(12),
              //             //     border: Border.all(color: Colors.white, width: 3)
              //             //   ),
              //             //   child: const Padding(
              //             //     padding: EdgeInsets.only(left: 8, right: 8),
              //             //     child: Text("+9", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600),),
              //             //   ),
              //             // ))
              //           ],
              //         ),
              //         SizedBox(width: MediaQuery.of(context).size.width*.02),
              //         Text("Chats", style: TextStyle(fontSize: MediaQuery.of(context).size.width*.067, fontWeight: FontWeight.bold),)
              //       ],
              //     ),
              //
              //     Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: Row(
              //         children: <Widget>[
              //           CircleAvatar(
              //             backgroundColor: Colors.grey[200],
              //             child: const Icon(Icons.camera_alt, color: Colors.black,size: 20,),
              //           ),
              //
              //           SizedBox(width: MediaQuery.of(context).size.width*.029),
              //
              //           CircleAvatar(
              //             backgroundColor: Colors.grey[200],
              //             child: const Icon(Icons.edit, color: Colors.black,size: 20,),
              //           )
              //         ],
              //       ),
              //     ),
              //   ],
              // ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0,right: 16.0,bottom: 16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: MediaQuery.of(context).size.width*.11,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.grey[200]),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "Search",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(height: 100.0, child: Circular()),
              ),
              CircleProfs(
                  "Ankur",
                  "images/m2.jpg",
                  "Lets meet tomorrow",
                  " . 3:09 PM",
                  false),
              SizedBox(
                height: 17.0,
              ),
              CircleProfs(
                  "Stella",
                  "images/w2.jpg",
                  "Hey What's up?",
                  " . Wed",
                  true),
              SizedBox(
                height: 17.0,
              ),
              CircleProfs(
                  "Rosy",
                  "images/w1.jpg",
                  "Are you ready for the party...",
                  " . Thu",
                  true),
              SizedBox(
                height: 17.0,
              ),
              CircleProfs(
                  "Ani",
                  "images/w2.jpg",
                  "Let's go have some fun",
                  " . Wed",
                  false),
              SizedBox(
                height: 17.0,
              ),
              CircleProfs(
                  "Gabriela",
                  "images/w1.jpg",
                  "I am so lucky to have you as a..",
                  " . Mon",
                  true),
              SizedBox(
                height: 17.0,
              ),
              CircleProfs(
                  "Marsh",
                  "images/w1.jpg",
                  "Nah I am not going!!",
                  " . 7 Jan",
                  false),
              SizedBox(
                height: 17.0,
              ),
              CircleProfs(
                  "Rudolf",
                  "images/w1.jpg",
                  "Don't show me your face..",
                  " . 14 Jan",
                  true),
              SizedBox(
                height: 17.0,
              ),
              CircleProfs(
                  "Shaun",
                  "images/w1.jpg",
                  "You are so irritating",
                  " . 28 Nov",
                  false),
              SizedBox(
                height: 17.0,
              ),
              CircleProfs(
                  "Jason",
                  "images/w1.jpg",
                  "I love you",
                  " . 12 Dec",
                  true)
            ],
          ),
        ));
  }

  CircleProfs(
      String name, String imgUrl, String msg, String time, bool isOnline) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return Chat(name,imgUrl,isOnline);  }));
      },
      child: Container(
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Row(
          children: <Widget>[
            Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(imgUrl),
                  radius: 26.0,
                ),
                isOnline == true ?Padding(
                  padding: const EdgeInsets.fromLTRB(37.0, 37.0, 3.0, 2.0),
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color:  Colors.green,
                        border: Border.all(
                          width: 4.0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                ):Padding(
                  padding: const EdgeInsets.fromLTRB(35.0, 0.0, 3.0, 0.0),
                  child: Container(width: 20.0,
                    height: 20.0,),
                )
              ],
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontSize: 16.0,color: Colors.grey[700]),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      msg,
                      style: TextStyle(fontSize: 13.0, color: Colors.grey),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      time,
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  CircleProfss(String name, String imgUrl, bool isOnline) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Column(
        children: <Widget>[
          Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(imgUrl),
                radius: 26.0,
              ),
              isOnline == true ? Padding(
                padding: const EdgeInsets.fromLTRB(35.0, 35.0, 3.0, 2.0),
                child: Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        width: 4.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ):Container()
            ],
          ),
          SizedBox(
            height: 1.0,
          ),
          Text(name,style: TextStyle(color: Colors.grey,fontSize: 12),),
        ],
      ),
    );
  }

  Widget Circular() {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Column(
          children: <Widget>[
            CircleAvatar(
              radius: 25.0,
              child: Center(
                  child: IconButton(
                      icon: const Icon(
                        Icons.video_call_rounded,
                        color: Colors.black,
                        size: 26.0,
                      ),
                      onPressed: () {})),
              backgroundColor: Colors.grey[200],
            ),
            SizedBox(
              height: 6.5,
            ),
            Text("Make video\n       call",style: TextStyle(color: Colors.grey,fontSize: 12),)
          ],
        ),
        SizedBox(
          width: 17.0,
        ),
        CircleProfss(
            "Ankur",
            "images/w1.jpg",
            false),
        SizedBox(
          width: 18.0,
        ),
        CircleProfss(
            "Stella",
            "images/w2.jpg",
            true),
        SizedBox(
          width: 18.0,
        ),
        CircleProfss(
            "Rosy",
            "images/w1.jpg",
            true),
        SizedBox(
          width: 18.0,
        ),
        CircleProfss(
            "Ani",
            "images/w2.jpg",
            false),
        SizedBox(
          width: 18.0,
        ),
        CircleProfss(
            "Gabriela",
            "images/w1.jpg",
            true),
        SizedBox(
          width: 18.0,
        ),
        CircleProfss(
            "Marsh",
            "images/w2.jpg",
            false),
        SizedBox(
          width: 18.0,
        ),
        CircleProfss(
            "Rudolf",
            "images/w1.jpg",
            true),
        SizedBox(
          width: 18.0,
        ),
        CircleProfss(
            "Shaun",
            "images/w1.jpg",
            false),
        SizedBox(
          width: 18.0,
        ),
        CircleProfss(
            "Jason",
            "images/w1.jpg",
            true)
      ],
    );
  }
}
