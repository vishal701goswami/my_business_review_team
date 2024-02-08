import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_business_review_team/dashboard.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({super.key});

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  final color = Colors.black;
  @override
  void initState() {
    super.initState();
    // loginLogic();
  }

  String? loginerror;

  bool passwordSecure = true;
  final _formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
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
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white12,
                    hintText: "Type here...",
                    hintStyle: const TextStyle(color: Colors.white38),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.transparent,
                            style: BorderStyle.none))),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "Name Required";
                  }
                  return null;
                },
              ),
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
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white12,
                    hintText: "Type here...",
                    hintStyle: const TextStyle(color: Colors.white38),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.transparent,
                            style: BorderStyle.none))),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "Email Required";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Phone",
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
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white12,
                    hintText: "XXXXX......",
                    hintStyle: const TextStyle(color: Colors.white38),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.transparent,
                            style: BorderStyle.none))),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "Phone Required";
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
                controller: passwordcontroller,
                style: GoogleFonts.openSans(color: Colors.white),
                obscureText: passwordSecure,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                        onTap: (() => setState(() {
                              passwordSecure =
                                  passwordSecure == false ? true : false;
                            })),
                        child: Icon(
                          passwordSecure == true
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: Colors.white,
                        )),
                    filled: true,
                    fillColor: Colors.white12,
                    hintText: "******......",
                    hintStyle: GoogleFonts.openSans(color: Colors.white38),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.transparent,
                            style: BorderStyle.none))),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "Password Required";
                  }
                  return null;
                },
              ),
              if (loginerror != null)
                Center(
                  child: Text(
                    loginerror!,
                    style: GoogleFonts.openSans(
                      color: Colors.red,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
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
                            builder: (context) => const Dashboard(),
                          ));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(35),
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
                ),
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
