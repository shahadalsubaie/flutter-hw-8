import 'package:flutter/material.dart';

extension GG on BuildContext {
  void openPage(Widget page) {
    final navigator = Navigator.of(this);
    navigator.push(MaterialPageRoute(builder: (context) => page));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var CurrentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget body;
    if (CurrentIndex == 0) {
      body = const AddTask();
    } else {
      body = const Setting();
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: CurrentIndex,
        onTap: (newIndex) {
          CurrentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
      body: body,
    );
  }
}

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFb35647),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text(
                'Today',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Jan.8.Today.Wednesday',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 183, 182, 182),
            indent: 10,
            endIndent: 10,
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              child: Row(
                children: const [
                  Icon(Icons.circle_outlined, color: Colors.amber, size: 35),
                  Text(
                    'Shop from Groceries',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 183, 182, 182),
            indent: 10,
            endIndent: 10,
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.circle_outlined, color: Colors.blue, size: 35),
                      Text(
                        'Pack Bag',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Row(
                      children: const [
                        Text(
                          'Pack Crayons and a soft drink',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 183, 182, 182),
            indent: 10,
            endIndent: 10,
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.circle_outlined, color: Color.fromARGB(255, 115, 116, 118), size: 35),
                          Text(
                            'Create Project Tag!! project ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Row(
                          children: const [
                            Text(
                              'Create a Project Tag',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color.fromRGBO(183, 182, 182, 1),
                        indent: 10,
                        endIndent: 10,
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.openPage(const Added());
        },
        backgroundColor: const Color(0xFFb35647),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 232, 232),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.star_border_outlined, color: Color.fromARGB(255, 211, 190, 53), size: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 30, right: 180),
                      child: Column(
                        children: const [
                          Text(
                            'Todoist Pro',
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          Text(
                            'Until Jul 8 2022',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Container(
                height: 350,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.star_border_outlined, color: Color.fromARGB(255, 211, 190, 53), size: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 30, right: 180),
                          child: Column(
                            children: const [
                              Text(
                                'Todoist Pro',
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              Text(
                                'Until Jul 8 2022',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.star_border_outlined, color: Color.fromARGB(255, 211, 190, 53), size: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 30, right: 180),
                          child: Column(
                            children: const [
                              Text(
                                'Todoist Pro',
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              Text(
                                'Until Jul 8 2022',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.star_border_outlined, color: Color.fromARGB(255, 211, 190, 53), size: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 30, right: 180),
                          child: Column(
                            children: const [
                              Text(
                                'Todoist Pro',
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              Text(
                                'Until Jul 8 2022',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.star_border_outlined, color: Color.fromARGB(255, 211, 190, 53), size: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 30, right: 180),
                          child: Column(
                            children: const [
                              Text(
                                'Todoist Pro',
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              Text(
                                'Until Jul 8 2022',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.star_border_outlined, color: Color.fromARGB(255, 211, 190, 53), size: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 30, right: 180),
                          child: Column(
                            children: const [
                              Text(
                                'Todoist Pro',
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              Text(
                                'Until Jul 8 2022',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                height: 180,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.star_border_outlined, color: Color.fromARGB(255, 211, 190, 53), size: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 30, right: 180),
                          child: Column(
                            children: const [
                              Text(
                                'Todoist Pro',
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                              Text(
                                'Until Jul 8 2022',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 1),
                      child: Container(
                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child:
                                  Icon(Icons.star_border_outlined, color: Color.fromARGB(255, 211, 190, 53), size: 25),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 30, right: 180),
                              child: Column(
                                children: const [
                                  Text(
                                    'Todoist Pro',
                                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                                  ),
                                  Text(
                                    'Until Jul 8 2022',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.star_border_outlined, color: Color.fromARGB(255, 211, 190, 53), size: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 30, right: 180),
                      child: Column(
                        children: const [
                          Text(
                            'Todoist Pro',
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          Text(
                            'Until Jul 8 2022',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            const Text(''),
          ],
        ),
      ),
    );
  }
}

class Added extends StatelessWidget {
  const Added({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text('data')),
    );
  }
}
