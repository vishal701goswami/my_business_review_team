import 'dart:io';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_business_review_team/Passbookpage.dart';
import 'package:my_business_review_team/Walletpage.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Profile",
            style: GoogleFonts.openSans(color: Colors.white),
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Center(
                child: GestureDetector(
                  onTap: getImage,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        if (_image != null)
                          ClipOval(
                            child: Image.file(
                              _image!,
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(3),
                            child: Icon(
                              Icons.edit_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 120,
                  width: 250,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const WalletPage(),
                                ));
                          },
                          child: Container(
                            height: 200,
                            width: 250,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.wallet_rounded,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Text(
                                  "Wallet",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const PassbookPage(),
                                ));
                          },
                          child: Container(
                            height: 200,
                            width: 220,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.menu_book_rounded,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Text(
                                  "Passbook",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: TextFormField(
                        style: GoogleFonts.openSans(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "User Name",
                          labelStyle: GoogleFonts.openSans(color: Colors.white),
                          // hintText: 'Enter text',
                          hintStyle: GoogleFonts.openSans(color: Colors.black),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Change Password",
                        style: GoogleFonts.openSans(
                            color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: TextFormField(
                        style: GoogleFonts.openSans(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "UPI ID",
                          labelStyle: GoogleFonts.openSans(color: Colors.white),
                          // hintText: 'Enter text',
                          hintStyle: GoogleFonts.openSans(color: Colors.black),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Locatior",
                        style: GoogleFonts.openSans(
                            color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: GenderAge(),
              ),
            ]));
  }
}

class GenderAge extends StatefulWidget {
  const GenderAge({super.key});

  @override
  State<GenderAge> createState() => _GenderAgeState();
}

class _GenderAgeState extends State<GenderAge> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: 500,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyDropdownPage(),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Age",
                    style:
                        GoogleFonts.openSans(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyDropdownPage extends StatefulWidget {
  @override
  _MyDropdownPageState createState() => _MyDropdownPageState();
}

class _MyDropdownPageState extends State<MyDropdownPage> {
  final List<String> items = [
    'Male',
    'Female',
    'Non-binary',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButtonHideUnderline(
          child: Center(
            child: DropdownButton2<String>(
              // isExpanded: true,
              hint: const Text(
                'Select Item',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                // overflow: TextOverflow.ellipsis,
              ),
              items: items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
              buttonStyleData: const ButtonStyleData(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    // borderRadius: BorderRadius.circular(5),
                  )),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 200,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.black,
                ),
                offset: const Offset(-20, 0),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(40),
                  thickness: MaterialStateProperty.all(6),
                  thumbVisibility: MaterialStateProperty.all(true),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
