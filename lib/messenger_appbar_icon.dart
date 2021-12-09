import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerAppBarAction extends StatefulWidget {
  List<Widget> actions = [];//List<Widget>(0);
  final String? title;
  final bool isScroll;
  final bool? isOnline;
  final bool? isBack;
  final String? subTitle;
  final String? imageUrl;

  MessengerAppBarAction({Key? key,
    required this.actions,
    this.title = '',
    required this.isScroll,
    this.isBack,
    this.isOnline,
    this.subTitle,
    this.imageUrl,
  }) : super(key: key);

  @override
  _MessengerAppBarActionState createState() => _MessengerAppBarActionState();
}

class _MessengerAppBarActionState extends State<MessengerAppBarAction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      padding: const EdgeInsets.only(right: 12.0, top: 25.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: widget.isScroll ? Colors.black12 : Colors.white,
          offset: const Offset(0.0, 1.0),
          blurRadius: 10.0,
        ),
      ]),
      child: Row(

        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);//Routes.goBack(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 25.0,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              Container(
                width: 16.0,
              ),
              Center(
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: [
                      Container(
                        height: 35.0,
                        width: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: AssetImage(widget.imageUrl!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      widget.isOnline==true?Padding(
                        padding: const EdgeInsets.fromLTRB(22.0, 22.0, 3.0, 2.0),
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
                  )),

              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    child: Text(
                      widget.title!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    widget.subTitle!,
                    style: TextStyle(color: Colors.grey, fontSize: 11.0),
                  )
                ],
              )
            ],
          ),
          Expanded(
            child: Container(
              child: Row(
                children: widget.actions
                    .map((c) => Container(
                  padding: EdgeInsets.only(left: 7.0),
                  child: c,
                ))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}