//import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
//import 'package:project_memokid/diary/db_helper/db_helper.dart';
//import 'package:project_memokid/diary/modal_class/notes.dart';
//import 'package:project_memokid/diary/utils/widgets.dart';
//
//
//class NoteData extends StatefulWidget {
//  final String appBarTitle;
//  final Note note;
//
//  NoteData(this.note, this.appBarTitle);
//
//  @override
//  State<StatefulWidget> createState() {
//    return NoteDataState(this.note, this.appBarTitle);
//  }
//}
//
//class NoteDataState extends State<NoteData> {
//  DatabaseHelper helper = DatabaseHelper();
//
//  String appBarTitle;
//  Note note;
//  TextEditingController titleController = TextEditingController();
//  TextEditingController descriptionController = TextEditingController();
//  int color;
//  bool isEdited = true;
//
//  NoteDataState(this.note, this.appBarTitle);
//
//  @override
//  Widget build(BuildContext context) {
//    titleController.text = note.title;
//    descriptionController.text = note.description;
//    color = note.color;
//    return WillPopScope(
//        onWillPop: () {
//
//    },
//        child: Scaffold(
//          appBar: AppBar(
//            backgroundColor: Color(0xFFFFF59D),
//            leading: IconButton(
//                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
//
//                onPressed: () {
//
//                }),
//            actions: <Widget>[
//              IconButton(
//                icon: Icon(
//                  Icons.save,
//                  color: Colors.black,
//                ),
//                onPressed: () {
//                  titleController.text.length == 0
//                      ? showEmptyTitleDialog(context)
//                      : _save();
//                },
//              ),
//              IconButton(
//                icon: Icon(Icons.delete, color: Colors.black),
//                onPressed: () {
//                  showDeleteDialog(context);
//                },
//              )
//            ],
//          ),
//          body: Container(
//            color: Color(0xFFFFF9C4),
//            child: Column(
//              children: <Widget>[
//                PriorityPicker(
//                  selectedIndex: 3 - note.priority,
//                  onTap: (index) {
//                    isEdited = true;
//                    note.priority = 3 - index;
//                  },
//                ),
//                ColorPicker(
//                  selectedIndex: note.color,
//                  onTap: (index) {
//                    setState(() {
//                      color = index;
//                    });
//                    isEdited = true;
//                    note.color = index;
//                  },
//                ),
//                SizedBox(
//                  height: 10.0,
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Card(
//                    color: Colors.white,
//                    child: Padding(
//                      padding: EdgeInsets.all(16.0),
//                      child: TextField(
//                        controller: titleController,
//                        maxLength: 255,
//                        style: Theme.of(context).textTheme.body1,
//                        onChanged: (value) {
//                          updateTitle();
//                        },
//                        decoration: InputDecoration.collapsed(
//                          hintText: 'Title',
//                        ),
//                      ),
//                    ),
//                  ),
//                ),
//                Expanded(
//                  child: Padding(
//                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 80.0),
//                    child: ListView(
//                      children: <Widget>[
//                        Card(
//                          child: Padding(
//                            padding: EdgeInsets.all(16.0),
//                            child: TextField(
//                              keyboardType: TextInputType.multiline,
//                              maxLines: 10,
//                              maxLength: 255,
//                              controller: descriptionController,
//                              style: Theme.of(context).textTheme.body2,
//                              onChanged: (value) {
//                                updateDescription();
//                              },
//                              decoration: InputDecoration.collapsed(
//                                hintText: 'Description',
//                              ),
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ));
//  }
//  void showDiscardDialog(BuildContext context) {
//    showDialog(
//      context: context,
//      builder: (BuildContext context) {
//        return AlertDialog(
//          shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.all(Radius.circular(10.0))),
//          title: Text(
//            "Discard Changes?",
//            style: Theme.of(context).textTheme.body1,
//          ),
//          content: Text("Are you sure you want to discard changes?",
//              style: Theme.of(context).textTheme.body2),
//          actions: <Widget>[
//            FlatButton(
//              child: Text("No",
//                  style: Theme.of(context)
//                      .textTheme
//                      .body1
//                      .copyWith(color: Colors.purple)),
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//            ),
//            FlatButton(
//              child: Text("Yes",
//                  style: Theme.of(context)
//                      .textTheme
//                      .body1
//                      .copyWith(color: Colors.purple)),
//              onPressed: () {
//                Navigator.of(context).pop();
//                moveToLastScreen();
//              },
//            ),
//          ],
//        );
//      },
//    );
//  }
//
//  void showEmptyTitleDialog(BuildContext context) {
//    showDialog(
//      context: context,
//      builder: (BuildContext context) {
//        return AlertDialog(
//          shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.all(Radius.circular(10.0))),
//          title: Text(
//            "Title is empty!",
//            style: Theme.of(context).textTheme.body1,
//          ),
//          content: Text('The title of the note cannot be empty.',
//              style: Theme.of(context).textTheme.body2),
//          actions: <Widget>[
//            FlatButton(
//              child: Text("Okay",
//                  style: Theme.of(context)
//                      .textTheme
//                      .body1
//                      .copyWith(color: Colors.purple)),
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//            ),
//          ],
//        );
//      },
//    );
//  }
//
//  void showDeleteDialog(BuildContext context) {
//    showDialog(
//      context: context,
//      builder: (BuildContext context) {
//        return AlertDialog(
//          shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.all(Radius.circular(10.0))),
//          title: Text(
//            "Delete Note?",
//            style: Theme.of(context).textTheme.body1,
//          ),
//          content: Text("Are you sure you want to delete this note?",
//              style: Theme.of(context).textTheme.body2),
//          actions: <Widget>[
//            FlatButton(
//              child: Text("No",
//                  style: Theme.of(context)
//                      .textTheme
//                      .body1
//                      .copyWith(color: Colors.purple)),
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//            ),
//            FlatButton(
//              child: Text("Yes",
//                  style: Theme.of(context)
//                      .textTheme
//                      .body1
//                      .copyWith(color: Colors.purple)),
//              onPressed: () {
//                Navigator.of(context).pop();
//                _delete();
//              },
//            ),
//          ],
//        );
//      },
//    );
//  }
//
//  void moveToLastScreen() {
//    Navigator.pop(context, true);
//  }
//
//  void updateTitle() {
//    isEdited = true;
//    note.title = titleController.text;
//  }
//
//  void updateDescription() {
//    isEdited = true;
//    note.description = descriptionController.text;
//  }
//
//  // Save data to database
//  void _save() async {
//    moveToLastScreen();
//
//    note.date = DateFormat.yMMMd().format(DateTime.now());
//
//    if (note.id != null) {
//      await helper.updateNote(note);
//    } else {
//      await helper.insertNote(note);
//    }
//  }
//
//  void _delete() async {
//    await helper.deleteNote(note.id);
//    moveToLastScreen();
//  }
//}
