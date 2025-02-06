import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatefulWidget {
  ChatCard({
    super.key,
    required this.name,
    required this.image,
    required this.message,
    required this.last_online,
    required this.isonline,
  });
  String name;
  String image;
  String message;
  String last_online;
  bool isonline;

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        elevation: 0,
        child: ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(widget.image),
              ),
              Positioned(
                bottom: 0,
                right: 10,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: widget.isonline ? Colors.green : Colors.grey,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ],
          ),
          title: Text(widget.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
          subtitle: Text(
            widget.message + '   ' + widget.last_online,
          ),
        ));
  }
}
