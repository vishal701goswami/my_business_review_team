import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_business_review_team/List_task.dart';
import 'package:my_business_review_team/Profilepge.dart';
import 'package:my_business_review_team/ProjectedBidspage.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  // List<Widget> page = [
  //   const Profile(),
  //   const Order_list(),
  //   const Cart(),
  // ];
  bool changer1 = false;
  bool changer2 = false;
  bool changer3 = false;
  bool changer4 = false;
  int index = 0;
  bool permission = false;
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: <Widget>[
        // page[pageindex],

        // Container(
        //   height: 60,
        //   width: MediaQuery.of(context).size.width,
        //   decoration: const BoxDecoration(
        //     color: Colors.black,
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       GestureDetector(
        //         onTap: () {
        //           setState(() {
        //             changer = !changer;
        //           });
        //         },
        //         child: Container(
        //           height: 50,
        //           width: 50,
        //           decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.circular(500)),
        //         ),
        //       )
        //     ],
        //   ),
        // ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 41, 41, 41),
                borderRadius: BorderRadius.circular(500),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onLongPress: () {
                      setState(() {
                        permission = true;
                        changer1 = true;
                      });
                    },
                    onLongPressUp: () {
                      setState(() {
                        permission = false;
                        changer1 = false;
                      });
                    },
                    onTap: () {
                      setState(() {
                        pageindex = 0;
                      });
                    },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(500),
                            boxShadow: [
                              if (pageindex == 0)
                                const BoxShadow(
                                  color: Colors.black54,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(0, 0),
                                )
                            ]),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onLongPress: () {
                      setState(() {
                        permission = true;
                        changer2 = true;
                      });
                    },
                    onLongPressUp: () {
                      setState(() {
                        permission = false;
                        changer2 = false;
                      });
                    },
                    onTap: () {
                      setState(() {
                        pageindex = 1;
                      });
                    },
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const TaskList(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(500),
                              boxShadow: [
                                if (pageindex == 1)
                                  const BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                  )
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.list_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onLongPress: () {
                      setState(() {
                        permission = true;
                        changer3 = true;
                      });
                    },
                    onLongPressUp: () {
                      setState(() {
                        permission = false;
                        changer3 = false;
                      });
                    },
                    onTap: () {
                      setState(() {
                        pageindex = 2;
                      });
                    },
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => Projects(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(500),
                              boxShadow: [
                                if (pageindex == 2)
                                  const BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                  )
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.backup_table,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onLongPress: () {
                      setState(() {
                        permission = true;
                        changer4 = true;
                      });
                    },
                    onLongPressUp: () {
                      setState(() {
                        permission = false;
                        changer4 = false;
                      });
                    },
                    onTap: () {
                      setState(() {
                        pageindex = 3;
                      });
                    },
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const ProfilePage(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(500),
                              boxShadow: [
                                if (pageindex == 3)
                                  const BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                  )
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.person_outline_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
