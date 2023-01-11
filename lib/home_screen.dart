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
        length: 5,
        child: Scaffold(
            appBar: AppBar(
                title: const Text('WhatsApp'),
                backgroundColor: Colors.teal,
                bottom: const TabBar(tabs: [
                  Tab(
                    child: Text('group'),
                  ),
                  Tab(
                    child: Text('status'),
                  ),
                  Tab(
                    child: Text('chat'),
                  ),
                  Tab(
                    child: Text('calls'),
                  ),
                ]),
                actions: [
                  const Icon(Icons.search),
                  const SizedBox(
                    width: 10,
                  ),
                  PopupMenuButton(
                      icon: const Icon(Icons.more_vert_outlined),
                      itemBuilder: (context) => [
                            const PopupMenuItem(
                                value: 1, child: Text('New Group')),
                            const PopupMenuItem(
                                value: 2, child: Text('Settings')),
                            const PopupMenuItem(
                                value: 3, child: Text('Log out'))
                          ]),
                  const SizedBox(
                    width: 10,
                  )
                ]),
            body: TabBarView(children: [
              const Icon(Icons.group),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: Container(
                            decoration: BoxDecoration(
                              shape:BoxShape.circle ,
                              border: Border.all(
                                color: Colors.green,
                              width: 2,
                            )
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/3778212/pexels-photo-3778212.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-3778212.jpg&fm=jpg&_gl=1*7zdjen*_ga*Mzc2MDgxNzEwLjE2NzE2OTY2OTI.*_ga_8JE65Q40S6*MTY3MzQyODUzNS45LjEuMTY3MzQyODYzMS4wLjAuMA..'),
                            )),
                        title: const Text('Naveed'),
                        subtitle: const Text('44m ago'));
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/3778212/pexels-photo-3778212.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-3778212.jpg&fm=jpg&_gl=1*7zdjen*_ga*Mzc2MDgxNzEwLjE2NzE2OTY2OTI.*_ga_8JE65Q40S6*MTY3MzQyODUzNS45LjEuMTY3MzQyODYzMS4wLjAuMA..'),
                      ),
                      title: Text('Naveed'),
                      subtitle: Text('Where are you'),
                      trailing: Text('6.36.PM'),
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/3778212/pexels-photo-3778212.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-3778212.jpg&fm=jpg&_gl=1*7zdjen*_ga*Mzc2MDgxNzEwLjE2NzE2OTY2OTI.*_ga_8JE65Q40S6*MTY3MzQyODUzNS45LjEuMTY3MzQyODYzMS4wLjAuMA..'),
                        ),
                        title: const Text('Naveed'),
                        subtitle: Text(index / 2 == 0
                            ? 'you missed audiocall'
                            : 'you misssed video call'),
                        trailing: Icon(
                            index / 2 == 0 ? Icons.phone : Icons.video_call));
                  }),
            ])));
  }
}
