import 'package:flutter/material.dart';

import '../views/add_note_screen.dart';

class EmptyHome extends StatelessWidget {
  const EmptyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "My Notes",
          style: TextStyle(
              fontFamily: 'AvertaCY',
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xff9a5dba)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 0.8,
                child: Image.asset(
                  "asset/images/noNote.png",
                ),
              ),
              Text(
                "There is no Notes yet.",
                style: TextStyle(
                  fontFamily: 'SFPro',
                  color: Colors.grey.shade700,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 150,
                child: Text(
                  "Create a new note by clicking the button below :)",
                  style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 14,
                    color: Colors.grey.shade700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff9a5dba),
                  ),
                  height: 50,
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Add Note",
                        style: TextStyle(
                          fontFamily: 'SFPro',
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddNote(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
