import 'package:flutter/material.dart';

class MessageSecreen extends StatefulWidget {
  final String name;
  final String image;

  const MessageSecreen({super.key , required this.name , required this.image});

  @override
  State<MessageSecreen> createState() => _MessageSecreenState();
}

class _MessageSecreenState extends State<MessageSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E55),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            )),
            title: Expanded(
              child: ListTile(
                contentPadding:EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(widget.image),
                ),
                title: Text(
                      widget.name,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                ),


              )
            ),
      ),
    );
  }
}