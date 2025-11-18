import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override

  List<Map> chatList = [
    {
      'name': 'Md kamrul islam',
      'image': 'https://picsum.photos/200/300',
      'last_msg': 'Hello World, how are pc',
      'time': '3:00 AM',
      'count': 0,
    },
    {
      'name': 'Md kamrul islam',
      'image': 'https://picsum.photos/200/300',
      'last_msg': 'Hello World, how are pc',
      'time': '3:00 AM',
      'count': 1,
    },
    {
      'name': 'Md kamrul islam',
      'image': 'https://picsum.photos/200/300',
      'last_msg': 'Hello World, how are pc',
      'time': '3:00 AM',
      'count': 2,
    }
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E55),
          title: const Text('WhatsApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon:  Icon(Icons.search,color: Colors.white.withValues(alpha: .7),)),
            IconButton(onPressed: (){}, icon:  Icon(Icons.more_vert,color: Colors.white.withValues(alpha: .7),)),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white.withValues(alpha: .5),
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
            Tab(
              icon: Icon(Icons.camera_alt_rounded),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Text('First Tab'),
            ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://picsum.photos/200/300'),
                ),
                  title: const Text("Rifat Hosen",
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolores, voluptatem!",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: .5)
                  ),
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('2:01 AM',
                      style: TextStyle(
                        color: const Color(0xFF10cE62),
                        fontSize: 15,
                      ),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: const Color(0xFF10cE62),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text("4",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),),
                        ),
                      )
                    ],
                  ),
              );

            }),
            Text('3d Tab'),
            Text('4th Tab'),

          ]),
        floatingActionButton: FloatingActionButton(
          onPressed: (){}, 
          backgroundColor:const Color(0xFF075E55),
          child: Icon(Icons.message_rounded,color: Colors.white,),
          //shape: const CircleBorder(),
          ),
      ),
    );
  }
}