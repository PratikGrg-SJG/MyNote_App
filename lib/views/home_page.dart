import 'package:flutter/material.dart';
import 'package:note_app/views/add_note_screen.dart';

import 'package:note_app/widgets/emptyHome_widget.dart';

class HomePage extends StatelessWidget {
  String? noteTitle;
  String? noteDesc;
  // final String? noteDesc;

  HomePage({
    super.key,
    this.noteTitle,
    this.noteDesc,
    // this.noteDesc,
  });

  @override
  Widget build(BuildContext context) {
    return (noteTitle == null)
        ? const EmptyHome()
        : Scaffold(
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
            body: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      elevation: 0,
                      child: ListTile(
                        title: Text(
                          "$noteTitle",
                          style: const TextStyle(
                            fontSize: 18,
                            fontFamily: "SFPro",
                            fontWeight: FontWeight.w600,
                            color: Color(0xff9a5dba),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.all(40),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddNote(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.add_box_rounded,
                  size: 70,
                  color: Color(0xff9a5dba),
                ),
              ),
            ),
          );
  }
}
