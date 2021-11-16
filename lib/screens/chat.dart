import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../messenger_appbar_icon.dart';
import 'audio_call_page.dart';

const ListYourFriendChat = [
  'Nice to meet you!',
  'Hello',
];
const ListYourChat = [
  'Nice to meet you!',
  'Hi',
];

class Chat extends StatefulWidget {
  String? name,image;
  bool? isOnline;


  Chat(this.name,this.image, this.isOnline);

  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final _isScroll = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            _buildAppBar(),
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemBuilder: (BuildContext context, int index) {
                  // if (index != ListYourFriendChat.length - 1) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 2.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Stack(
                                fit: StackFit.passthrough,
                                children: [
                                  AppBarNetworkRoundedImage(
                                    imageUrl: widget.image,),
                                  widget.isOnline==true?Padding(
                                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 3.0, 2.0),
                                    child: Container(
                                      width: 15.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                          color:  Colors.green,
                                          border: Border.all(
                                            width: 3.0,
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(15.0)),
                                    ),
                                  ):Padding(
                                    padding: const EdgeInsets.fromLTRB(6.0, 0.0, 3.0, 0.0),
                                    child: Container(width: 20.0,
                                      height: 20.0,),
                                  )
                                ],
                              ),
                              SizedBox(width: 15.0),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Text(
                                  ListYourFriendChat[index],
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 2.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Text(
                                  ListYourChat[index],
                                  style: TextStyle(fontSize: 16.0,color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 15.0),
                              AppBarNetworkRoundedImage(
                                imageUrl: "images/m1.jpg",),
                            ],
                          ),
                        )
                      ],
                    );
                  //} else {
                    //return

                  },
                itemCount: ListYourFriendChat.length,
              ),
            ),
            _buildBottomChat(),
          ],
        ),
      ),
    );
  }

  _buildAppBar() {
    return MessengerAppBarAction(
      isScroll: _isScroll,
      isBack: true,
      isOnline: widget.isOnline,
      title: widget.name,//widget.friendItem!.name,
      imageUrl:  widget.image,//widget.friendItem!.imageAvatarUrl,
      subTitle: widget.isOnline==true?'Active now':'10 hours ago',
      actions: <Widget>[
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return AudioCall(image:widget.image,name:widget.name,);  }));
          },
          child: Icon(
            FontAwesomeIcons.phoneAlt,
            color: Colors.deepPurpleAccent,
            size: 20.0,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width*.05,
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.video,
              color: Colors.deepPurpleAccent,
              size: 20.0,
            ),
            SizedBox(width: MediaQuery.of(context).size.width*.008,),
            widget.isOnline==true?Container(
              width: 13.0,
              height: 13.0,
              decoration: BoxDecoration(
                  color:  Colors.green,
                  border: Border.all(
                    width: 3.0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15.0)),
            ):Container(width: 13.0,
              height: 13.0,)
          ],
        ),
        Icon(
          Icons.info_rounded,
          color: Colors.deepPurpleAccent,
          size: 25.0,
        ),
      ],
    );
  }

  _buildBottomChat() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0,left: 10),
      child: Row(
        children: <Widget>[
          Container(
            height: 20.0,
            width: 22.0,
            decoration: const BoxDecoration(
              //borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage('images/noun_menu.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*.04),
          // IconButton(
          //   icon: Icon(
          //     CupertinoIcons.menu,
          //     size: 22.0,
          //     color: Colors.deepPurple,
          //   ),
          //   onPressed: () {},
          // ),
          Container(
            width: 22.0,
            child: Icon(
              FontAwesomeIcons.camera,
              size: 20.0,
              color: Colors.deepPurpleAccent,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*.04),
          Container(
            width: 22.0,
            child: Icon(
              CupertinoIcons.photo,
              size: 20.0,
              color: Colors.deepPurpleAccent,
            ),
          ),
          SizedBox(width: 15),
          Container(
            width: 22.0,
            child: Icon(
              CupertinoIcons.mic_solid,
              size: 20.0,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: MediaQuery.of(context).size.width*.11,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Aa',
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.solidSmileBeam,
                      size: 22.0,
                      color: Colors.deepPurpleAccent,
                    )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.solidThumbsUp,
                size: 22.0,
                color: Colors.deepPurpleAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}


class AppBarNetworkRoundedImage extends StatelessWidget {
  final String? imageUrl;

  AppBarNetworkRoundedImage({@required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          height: 25.0,
          width: 25.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(imageUrl!),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}