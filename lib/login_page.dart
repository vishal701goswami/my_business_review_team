import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_business_review_team/Singup_page.dart';
import 'package:my_business_review_team/dashboard.dart';
import 'package:my_business_review_team/forgetpassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final color = Colors.black;
  @override
  void initState() {
    super.initState();
    // loginLogic();
  }

  String? loginerror;
  bool mailorphone = false;
  bool changer = false;
  bool changer2 = false;
  bool changer3 = false;
  bool changer4 = false;
  bool passwordSecure = true;
  final _formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: changer4 == true
                ? Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                changer = false;
                              });
                              changer2 = false;
                              Future.delayed(const Duration(milliseconds: 500),
                                  () {
                                setState(() {
                                  changer3 = false;
                                  changer4 = false;
                                });
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              height: changer == false ? 0 : 200,
                              width: changer == false ? 0 : 200,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 46, 30, 30),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(600))),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (changer2 == true)
                                        SizedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 50.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.arrow_back,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  "Back",
                                                  style: GoogleFonts.openSans(
                                                    color: Colors.white,
                                                    fontStyle: FontStyle.normal,
                                                    letterSpacing: 1,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      if (changer2 == true)
                                        Text(
                                          "Log In",
                                          style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontStyle: FontStyle.normal,
                                            letterSpacing: 1,
                                            fontSize: 28,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(child: SizedBox())
                      ],
                    ))
                : Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 90,
                        ),
                        Text(
                          "AHBMS",
                          style: GoogleFonts.montserrat(
                            color: const Color.fromARGB(255, 21, 125, 210),
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1,
                            fontSize: 45,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
          Expanded(
              flex: changer3 == false ? 1 : 2,
              child: Container(
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      height: changer == false ? 400 : 700,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(12, 26, 26, 26),
                          borderRadius: BorderRadiusDirectional.vertical(
                              top: Radius.elliptical(300, 150))),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      height: changer == false ? 300 : 550,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(12, 26, 26, 26),
                          borderRadius: BorderRadiusDirectional.vertical(
                              top: Radius.elliptical(350, 180))),
                    ),
                    AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: changer == false ? 200 : 500,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.elliptical(190, 110))),
                        child: changer == false
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      setState(() {
                                        changer4 = true;
                                        mailorphone = false;
                                      });
                                      await Future.delayed(
                                          const Duration(milliseconds: 5), () {
                                        changer =
                                            changer == false ? true : false;
                                        changer3 = true;
                                        Future.delayed(
                                            const Duration(milliseconds: 500),
                                            () {
                                          setState(() {
                                            changer2 = true;
                                          });
                                        });
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(35),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Log In",
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            setState(() {
                                              changer4 = true;
                                              mailorphone = true;
                                            });
                                            await Future.delayed(
                                                const Duration(milliseconds: 5),
                                                () {
                                              changer = changer == false
                                                  ? true
                                                  : false;
                                              changer3 = true;
                                              Future.delayed(
                                                  const Duration(
                                                      milliseconds: 500), () {
                                                setState(() {
                                                  changer2 = true;
                                                });
                                              });
                                            });
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(35),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "SingUp",
                                                style: GoogleFonts.openSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 80.0,
                                        bottom: 8.0,
                                        left: 30.0,
                                        right: 30.0),
                                    child: mailorphone == false
                                        ? Form(
                                            key: _formkey,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Center(
                                                    child: GestureDetector(
                                                  // onTap: () {
                                                  //   Navigator.push(
                                                  //       context,
                                                  //       CupertinoPageRoute(
                                                  //         builder: (context) =>
                                                  //             OTP_Change_page(),
                                                  //       ));
                                                  // },
                                                  child: Text(
                                                    "With Phone",
                                                    style: GoogleFonts.openSans(
                                                      color: Colors.blue,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing: 1,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                )),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "Email",
                                                  style: GoogleFonts.openSans(
                                                    color: Colors.white,
                                                    fontStyle: FontStyle.normal,
                                                    letterSpacing: 1,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                TextFormField(
                                                  controller: emailcontroller,
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                  decoration: InputDecoration(
                                                      filled: true,
                                                      fillColor: Colors.white12,
                                                      hintText: "Type here...",
                                                      hintStyle: const TextStyle(
                                                          color:
                                                              Colors.white38),
                                                      border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          borderSide: const BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              style: BorderStyle
                                                                  .none))),
                                                  validator: (value) {
                                                    if (value!.isEmpty ||
                                                        value == null) {
                                                      return "Email Required";
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "Password",
                                                  style: GoogleFonts.openSans(
                                                    color: Colors.white,
                                                    fontStyle: FontStyle.normal,
                                                    letterSpacing: 1,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                TextFormField(
                                                  controller:
                                                      passwordcontroller,
                                                  style: GoogleFonts.openSans(
                                                      color: Colors.white),
                                                  obscureText: passwordSecure,
                                                  decoration: InputDecoration(
                                                      suffixIcon:
                                                          GestureDetector(
                                                              onTap: (() =>
                                                                  setState(() {
                                                                    passwordSecure = passwordSecure ==
                                                                            false
                                                                        ? true
                                                                        : false;
                                                                  })),
                                                              child: Icon(
                                                                passwordSecure ==
                                                                        true
                                                                    ? Icons
                                                                        .visibility_off_outlined
                                                                    : Icons
                                                                        .visibility_outlined,
                                                                color: Colors
                                                                    .white,
                                                              )),
                                                      filled: true,
                                                      fillColor: Colors.white12,
                                                      hintText: "Type here...",
                                                      hintStyle:
                                                          GoogleFonts.openSans(
                                                              color: Colors
                                                                  .white38),
                                                      border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          borderSide: const BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              style: BorderStyle
                                                                  .none))),
                                                  validator: (value) {
                                                    if (value!.isEmpty ||
                                                        value == null) {
                                                      return "Password Required";
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                if (loginerror != null)
                                                  Center(
                                                    child: Text(
                                                      loginerror!,
                                                      style:
                                                          GoogleFonts.openSans(
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                  ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              CupertinoPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        ForgetPassword(),
                                                              ));
                                                        },
                                                        child: const Text(
                                                          "Forget Password",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 30),
                                                  // child: GestureDetector(
                                                  //   onTap: () async {
                                                  //     var token = "klmkhnygujihg7uuyuy";
                                                  //     if (_formkey.currentState!
                                                  //         .validate()) {
                                                  //       checkLogin(
                                                  //           emailcontroller.text,
                                                  //           passwordcontroller.text,
                                                  //           token);
                                                  //     }
                                                  //   },
                                                  child: Center(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            CupertinoPageRoute(
                                                              builder: (context) =>
                                                                  const Dashboard(),
                                                            ));
                                                      },
                                                      child: Container(
                                                        height: 50,
                                                        width: 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(35),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "Log In",
                                                            style: GoogleFonts
                                                                .openSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        20,
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  // ),
                                                )
                                              ],
                                            ),
                                          )
                                        : const SingupPage()),
                              )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
