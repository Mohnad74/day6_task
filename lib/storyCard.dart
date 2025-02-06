import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class storyCard extends StatefulWidget {
  storyCard({
    super.key,
    required this.name,
    required this.image,
    required this.isonline,
  });
  String name;
  String image;
  bool isonline;

  @override
  State<storyCard> createState() => _storyCardState();
}

class _storyCardState extends State<storyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              if (widget.name == "Your Story")
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 40,
                  ),
                )
              else
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(widget.image),
                ),
              if (widget.name != "Your Story")
                Positioned(
                  bottom: 0,
                  right: 0,
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
          SizedBox(height: 8),
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
