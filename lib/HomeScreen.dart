import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (Context) => const [
                        PopupMenuItem(
                          value: 1,
                          child: Text('New Group'),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text('New broadcast'),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: Text('Linked devices'),
                        ),
                        PopupMenuItem(
                          value: 4,
                          child: Text('Starred messages'),
                        ),
                        PopupMenuItem(
                          value: 5,
                          child: Text('Settings'),
                        ),
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(children: [
            const Text('Camera'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg'),
                    ),
                    title: Text('Mehar Ahmed'),
                    subtitle: Text('Where is my Dog?'),
                    trailing: Text('3:48 PM'),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 4)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                      ),
                    ),
                    title: const Text('Mehar Ahmed'),
                    subtitle:
                        Text(index / 2 == 0 ? '35 mins ago' : '10 mins ago'),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: const Text('Mehar Ahmed'),
                    subtitle: Text(
                        index / 2 == 0 ? 'Today: 11:40 AM' : 'Today: 4:12 PM'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.call : Icons.video_call),
                  );
                }),
          ]),
        ));
  }
}
