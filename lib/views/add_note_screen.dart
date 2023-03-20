import 'package:flutter/material.dart';
import 'package:note_app/views/home_page.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final TextEditingController _noteTitleController = TextEditingController();
  final TextEditingController _noteDescController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_rounded,
              color: Color(0xff9a5dba),
            ),
            onTap: () => Navigator.pop(context),
          ),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Add Notes",
            style: TextStyle(
                fontFamily: 'AvertaCY',
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Color(0xff9a5dba)),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 25),
                  child: Text(
                    "New Note",
                    style: TextStyle(
                      fontFamily: 'SFPro',
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff9a5dba),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      TextField(
                        controller: _noteTitleController,
                        decoration: const InputDecoration(
                          hintText: "Enter title",
                          hintStyle: TextStyle(
                              color: Colors.grey, fontFamily: 'SFPro'),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            borderSide:
                                BorderSide(color: Color(0xffB183BD), width: 2),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _noteDescController,
                        minLines: 3,
                        maxLines: 4,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          hintText: "what're you thinking",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'SFPro',
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            borderSide: BorderSide(
                              width: 2,
                              color: Color(0xffB183BD),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xff9a5dba),
                        ),
                      ),
                      onPressed: () {
                        print(_noteTitleController.text);
                        print(_noteDescController.text);
                        // Navigator.pop(context);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage(
                                noteTitle: _noteTitleController.text.toString(),
                                noteDesc: _noteDescController.text.toString(),
                              );
                            },
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Text(
                          "SAVE",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "asset/images/addnotelogo.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
