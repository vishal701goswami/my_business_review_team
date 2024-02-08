import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_business_review_team/Menucode.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () => _showMyDialog(),
            icon: const Icon(
              Icons.logout_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      // drawer: const MyDrawer(
      //   pageName: "Dashboard",
      // ),
      body: const Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [UserInfoSection(), UserPaymentSection()],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Logout Warrning',
            style: GoogleFonts.openSans(),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'Are You sure to Logout',
                  style: GoogleFonts.openSans(),
                ),
                Text(
                  'Would you like to approve of this message?',
                  style: GoogleFonts.openSans(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Ashutosh \nBurman",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1,
                        fontSize: 30,
                        shadows: [
                          BoxShadow(
                            color: Colors.grey.shade800,
                            spreadRadius: 1,
                            blurRadius: 12,
                            offset: const Offset(-4, 4),
                          )
                        ]),
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "#",
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1,
                            fontSize: 30,
                            shadows: [
                              BoxShadow(
                                color: Colors.grey.shade800,
                                spreadRadius: 1,
                                blurRadius: 12,
                                offset: const Offset(-4, 4),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "1007",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1,
                        fontSize: 30,
                        shadows: [
                          BoxShadow(
                            color: Colors.grey.shade800,
                            spreadRadius: 1,
                            blurRadius: 12,
                            offset: const Offset(-4, 4),
                          )
                        ]),
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "JPAB",
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1,
                            fontSize: 30,
                            shadows: [
                              BoxShadow(
                                color: Colors.grey.shade800,
                                spreadRadius: 1,
                                blurRadius: 12,
                                offset: const Offset(-4, 4),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "ankit.samant.ahec@gmail.com",
              style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1,
                  fontSize: 20,
                  shadows: [
                    BoxShadow(
                      color: Colors.grey.shade800,
                      spreadRadius: 1,
                      blurRadius: 12,
                      offset: const Offset(-4, 4),
                    )
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "business Development Executive",
              style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1,
                  fontSize: 18,
                  shadows: [
                    BoxShadow(
                      color: Colors.grey.shade800,
                      spreadRadius: 1,
                      blurRadius: 12,
                      offset: const Offset(-4, 4),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class UserPaymentSection extends StatefulWidget {
  const UserPaymentSection({super.key});

  @override
  State<UserPaymentSection> createState() => _UserPaymentSectionState();
}

class _UserPaymentSectionState extends State<UserPaymentSection> {
  @override
  Widget build(BuildContext context) {
    double containerSize = MediaQuery.of(context).size.width / 2 - 20;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.8,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.grey,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, -4),
              spreadRadius: 2,
              blurRadius: 12,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: containerSize,
                height: containerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Center(
                    child: Text(
                  'Container 1',
                  style: GoogleFonts.montserrat(color: Colors.white),
                )),
              ),
              const SizedBox(width: 10), // Adjust spacing between containers
              Container(
                width: containerSize,
                height: containerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Center(
                    child: Text(
                  'Container 2',
                  style: GoogleFonts.montserrat(color: Colors.white),
                )),
              ),
            ],
          ),
          const SizedBox(height: 10), // Adjust spacing between rows
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: containerSize,
                height: containerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Center(
                    child: Text(
                  'Container 3',
                  style: GoogleFonts.montserrat(color: Colors.white),
                )),
              ),
              const SizedBox(width: 10), // Adjust spacing between containers
              Container(
                width: containerSize,
                height: containerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Center(
                    child: Text(
                  'Container 4',
                  style: GoogleFonts.montserrat(color: Colors.white),
                )),
              ),
            ],
          ),
          const Menu()
        ],
      ),
    );
  }
}
