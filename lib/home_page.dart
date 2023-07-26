// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_second_app/description_page.dart';
import 'package:my_second_app/main.dart';
import 'package:my_second_app/money_page.dart';
import 'package:my_second_app/plan.dart';
import 'package:my_second_app/planning.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (backgroundColor == Colors.white) {
                  backgroundColor = const Color.fromARGB(255, 131, 83, 108);
                } else {
                  backgroundColor = Colors.white;
                }
              });
            },
            icon: const Icon(
              Icons.color_lens,
            ),
          ),
        ],
        backgroundColor: Colors.red,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: ListTile(
                  title: Text(
                    'Your Profile',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const ListTile(
                // onTap: (){},
                leading: Icon(Icons.settings),
                title: Text(
                  'Setting',
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Log out',
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0,
            ),
            child: Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const MoneyPage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(50, 40),
                    ),
                    child: const Text('Money')),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(50, 40),
                    ),
                    child: const Text('Bitcoin')),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(50, 40),
                    ),
                    child: const Text('Stocks')),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(50, 40),
                    ),
                    child: const Text('Diamonds'))
              ],
            ),
          ),
          // ! First Tile

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const PlanningPage();
                  },
                ),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2))
                  ]),
              child: const Column(children: [
                Image(
                  image: AssetImage('images/pla2.png'),
                ),
                ListTile(
                  title: Text(
                    'Start planning',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  hoverColor: Colors.amber,
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                )
              ]),
            ),
          ),
          // ! second Tile
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const DescriptionPage();
                  },
                ),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(2, 2))
                  ]),
              child: const Column(children: [
                Image(
                  image: AssetImage('images/rai0.png'),
                ),
                ListTile(
                  title: Text(
                    'Register for A.I based financial planning',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  hoverColor: Colors.amber,
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                )
              ]),
            ),
          ),
          // ! third Tile

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const PlanPage(
                      title: 'How to plan your finances',
                    );
                  },
                ),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2))
                  ]),
              child: const Column(children: [
                Image(
                  image: AssetImage('images/rai7.png'),
                ),
                ListTile(
                  title: Text(
                    'How to use A.I for financial planning',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  hoverColor: Colors.amber,
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                )
              ]),
            ),
          ),

          // Container(
          //   width: double.infinity,
          //   margin: const EdgeInsets.symmetric(
          //     horizontal: 10,
          //     vertical: 5,
          //   ),
          //   decoration: BoxDecoration(
          //       color: const Color.fromARGB(255, 255, 255, 255),
          //       borderRadius: BorderRadius.circular(15),
          //       boxShadow: const [
          //         BoxShadow(
          //             color: Colors.black12,
          //             spreadRadius: 2,
          //             blurRadius: 2,
          //             offset: Offset(2, 2))
          //       ]),
          //   child: Column(children: [
          //     const Image(
          //       image: AssetImage('images/roc2.png'),
          //     ),
          //     ListTile(
          //       onTap: () {
          //         Navigator.of(context).push(
          //           MaterialPageRoute(
          //             builder: (BuildContext context) {
          //               return const PlanPage(
          //                 title: 'Plan',
          //               );
          //             },
          //           ),
          //         );
          //       },
          //       title: const Text(
          //         'Start planning',
          //         style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          //       ),
          //       hoverColor: Colors.amber,
          //       trailing: const Icon(Icons.arrow_forward_ios_rounded),
          //     )
          //   ]),
          // ),
          // Container(
          //   width: double.infinity,
          //   margin: const EdgeInsets.symmetric(
          //     horizontal: 10,
          //     vertical: 5,
          //   ),
          //   decoration: BoxDecoration(
          //       color: const Color.fromARGB(255, 255, 255, 255),
          //       borderRadius: BorderRadius.circular(15),
          //       boxShadow: const [
          //         BoxShadow(
          //             color: Colors.black12,
          //             spreadRadius: 2,
          //             blurRadius: 2,
          //             offset: Offset(2, 2))
          //       ]),
          //   child: const Column(children: [
          //     Image(
          //       image: AssetImage('images/rai2.png'),
          //     ),
          //     ListTile(
          //       title: Text(
          //         'Build a schedule',
          //         style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          //       ),
          //       hoverColor: Colors.amber,
          //       trailing: Icon(Icons.arrow_forward_ios_rounded),
          //     )
          //   ]),
          // )
        ]),
      ),
    );
  }
}
