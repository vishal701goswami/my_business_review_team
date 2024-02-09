import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Projected Brids"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.white), // Set text color to black
                cursorColor: Colors.black, // Set cursor color to black
                decoration: InputDecoration(
                  labelText: 'Project title',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true, // Set to true to fill the box with color
                  fillColor: Colors.black, // Set label text color to white
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Colors.white), // Set border color to black
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 223, 192,
                            192)), // Set focused border color to black
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLines: 3,
                style: TextStyle(
                    color: Colors.blue.shade800), // Set text color to black
                cursorColor: Colors.black, // Set cursor color to black
                decoration: InputDecoration(
                  labelText: 'URL',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true, // Set to true to fill the box with color
                  fillColor: Colors.black, // Set label text color to white
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Colors.white), // Set border color to black
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 223, 192,
                            192)), // Set focused border color to black
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.white), // Set text color to black
                cursorColor: Colors.black, // Set cursor color to black
                decoration: InputDecoration(
                  labelText: 'Bids',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true, // Set to true to fill the box with color
                  fillColor: Colors.black, // Set label text color to white
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Colors.white), // Set border color to black
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 223, 192,
                            192)), // Set focused border color to black
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.white), // Set text color to black
                cursorColor: Colors.black, // Set cursor color to black
                decoration: InputDecoration(
                  labelText: 'Per Slot Reward',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true, // Set to true to fill the box with color
                  fillColor: Colors.black, // Set label text color to white
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Colors.white), // Set border color to black
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 223, 192,
                            192)), // Set focused border color to black
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.white), // Set text color to black
                cursorColor: Colors.black, // Set cursor color to black
                decoration: InputDecoration(
                  labelText: 'Location',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true, // Set to true to fill the box with color
                  fillColor: Colors.black, // Set label text color to white
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Colors.white), // Set border color to black
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 223, 192,
                            192)), // Set focused border color to black
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLines: 4,
                maxLength: 5,
                style: const TextStyle(
                    color: Colors.white), // Set text color to black
                cursorColor: Colors.black, // Set cursor color to black
                decoration: InputDecoration(
                  labelText: 'Reviews',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true, // Set to true to fill the box with color
                  fillColor: Colors.black, // Set label text color to white
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Colors.white), // Set border color to black
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 223, 192,
                            192)), // Set focused border color to black
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
