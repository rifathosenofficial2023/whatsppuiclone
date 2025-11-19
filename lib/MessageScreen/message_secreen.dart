import 'package:flutter/material.dart';

class MessageSecreen extends StatefulWidget {
  final String name;
  final String image;

  const MessageSecreen({super.key , required this.name , required this.image});

  @override
  State<MessageSecreen> createState() => _MessageSecreenState();
}

class _MessageSecreenState extends State<MessageSecreen> {

  List<Map> chatDetails = [
    {
      'message':'Hello world',
      'is_me': false,
      'time': '4:00 Pm'
    },
    {
      'message':'How are you?',
      'is_me': true,
      'time': '9:00 Pm'
    },
    {
      'message':'Hi',
      'is_me': false,
      'time': '1:00 Pm'
    },
    {
      'message':'Hello',
      'is_me': true,
      'time': '8:00 Pm'
    },
  ];


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
                subtitle: Text(
                  'Last seen 03:00 AM',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: .5)
                  ),
                ),
                trailing: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),


              )
            ),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: chatDetails.length,
              itemBuilder: (context, index) {
              final data = chatDetails[index];
            
              return Column(
                crossAxisAlignment: data['is_me'] == true ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                       // height: 40,
                       // width: 60,
                       constraints: const BoxConstraints(
                        maxWidth: 200,
                       ),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration:  BoxDecoration(
                          color: data['is_me'] == true ? Color(0xFF075E55) : Colors.black,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            //bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          )
                        ),
                        child: Center(
                          child: Text(data['message'],
                          style: TextStyle(
                            color: Colors.white
                          ),
                          ),
                        ),
                      ),
                      Text(data['time'])
                    ],
                  ),
                ],
              );
            },),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(child: Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 10,),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: .1),
                    borderRadius: BorderRadius.circular(40)
                  ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.emoji_emotions_outlined),
                          suffixIcon: Icon(Icons.link_outlined),
                          border: InputBorder.none,
                          hintText: 'Enter your message'
                        ),
                      ),
                    ),
                )),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: const Color(0xFF075E55),
                  child: Icon(Icons.send),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}