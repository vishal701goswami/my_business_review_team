import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PassbookPage extends StatefulWidget {
  const PassbookPage({super.key});

  @override
  State<PassbookPage> createState() => _PassbookPageState();
}

class _PassbookPageState extends State<PassbookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Passbook",
            style: GoogleFonts.montserrat(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "XYX",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Paid on",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white54),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "28 jan,",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white54),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "06:65",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white54),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "PM",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "-@500",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "PM",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white54),
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              );
            }));
  }
}
