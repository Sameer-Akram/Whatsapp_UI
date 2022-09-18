import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
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
            title: const Text('WhatsApp UI'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt_rounded),
                ),
                Tab(
                  child: Text('CHATS'),
                ),
                Tab(
                  child: Text('STATUS'),
                ),
                Tab(
                  child: Text('CALLS'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: ((context) => const [
                        PopupMenuItem(value: 1, child: Text('New group')),
                        PopupMenuItem(value: 2, child: Text('New broadcast')),
                        PopupMenuItem(value: 3, child: Text('Linked devices')),
                        PopupMenuItem(
                            value: 3, child: Text('Starred messages')),
                        PopupMenuItem(value: 3, child: Text('Setting'))
                      ])),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(children: [
            const Center(child: Text('Camera')),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWhBWHMy73lF-_ge7wMQBF6fUDVHksm6rin3sCu4ur7A&s'),
                      ),
                      title: Text('Sameer'),
                      subtitle: Text('How are you?'),
                      trailing: Text('6:30pm'));
                }),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWhBWHMy73lF-_ge7wMQBF6fUDVHksm6rin3sCu4ur7A&s'),
                      ),
                    ),
                    title: const Text('Sameer'),
                    subtitle: const Text('20m ago'),
                  );
                }),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWhBWHMy73lF-_ge7wMQBF6fUDVHksm6rin3sCu4ur7A&s'),
                    ),
                    title: const Text('Sameer'),
                    subtitle: Text(index / 2 == 0
                        ? 'You missed a call'
                        : 'call time is 12:23 pm'),
                    trailing: Icon(index / 2 == 0
                        ? Icons.phone
                        : Icons.video_call_outlined),
                  );
                }),
          ]),
        ));
  }
}
