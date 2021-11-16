import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioCall extends StatefulWidget {
  String? name,image;

  AudioCall({this.image,this.name});

  @override
  _AudioCallState createState() => _AudioCallState();
}

class _AudioCallState extends State<AudioCall> {

  // void starttimer() {
  //   const onesec = Duration(seconds: 1);
  //   Timer.periodic(onesec, (Timer t) {
  //
  //     setState(() {
  //       if (timer <= 1) {
  //         stopMusic();
  //         t.cancel();
  //         _showTimeUpDialog();
  //         setState(() {
  //           tScore.name = widget.name;
  //           tScore.score = _currentScore;
  //           tScore.income = _currentIncome;
  //         });
  //         _save();
  //       } else if (canceltimer == true) {
  //         t.cancel();
  //       } else {
  //         timer = timer - 1;
  //       }
  //       showtimer = timer.toString();
  //     });
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Row()
        ],
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage(widget.image!),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                          widget.image!),
                      radius: 35.0,
                    ),
                  ),
                  Text(
                    widget.name!, style: TextStyle(fontSize: 20.0,color: Colors.white),
                  ),
                  Text(
                    '00:00', style: TextStyle(fontSize: 20.0,color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[600],
                        child: const Icon(Icons.person_add_rounded, color: Colors.white,size: 20,),
                      ),
                      SizedBox(width: 20),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[600],
                        child: const Icon(CupertinoIcons.volume_down, color: Colors.white,size: 20),
                      ),
                      SizedBox(width: 20),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[600],
                        child: const Icon(Icons.mic_sharp, color: Colors.white,size: 20),
                      ),
                      SizedBox(width: 20),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.redAccent,
                        child: const Icon(CupertinoIcons.phone_down_fill, color: Colors.white,size: 20),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
