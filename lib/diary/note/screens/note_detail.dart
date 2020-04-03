import 'dart:io';
import 'package:app_memokid/diary/note/db_helper/db_helper.dart';
import 'package:app_memokid/diary/note/modal_class/notes.dart';
import 'package:app_memokid/diary/note/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class NoteDetail extends StatefulWidget {
  final String appBarTitle;
  final Note note;

  NoteDetail(this.note, this.appBarTitle);

  @override
  State<StatefulWidget> createState() {
    return NoteDetailState(this.note, this.appBarTitle);
  }
}

class NoteDetailState extends State<NoteDetail> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  DatabaseHelper helper = DatabaseHelper();

  String appBarTitle;
  Note note;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  int color;
  bool isEdited = false;

  NoteDetailState(this.note, this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    titleController.text = note.title;
    descriptionController.text = note.description;
    color = note.color;
    return WillPopScope(
        onWillPop: () {
          isEdited ? showDiscardDialog(context) : moveToLastScreen();
        },
        child: Scaffold(
          appBar: AppBar(

            elevation: 0,
            title: Text(
              appBarTitle,
              style: Theme.of(context).textTheme.headline,
            ),
            backgroundColor: Color(0xFFFFF59D),
            leading: Container(),
//            leading: IconButton(
//                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
//                onPressed: () {
//                  isEdited ? showDiscardDialog(context) : moveToLastScreen();
//                }),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.save,
                  color: Colors.black,
                ),
                onPressed: () {
                  titleController.text.length == 0
                      ? showEmptyTitleDialog(context)
                      : _save();
                },
              ),
              IconButton(
                icon: Icon(Icons.delete, color: Colors.black),
                onPressed: () {
                  showDeleteDialog(context);
                },
              )
            ],
          ),
          resizeToAvoidBottomPadding: false,
          body: Container(
            color: Color(0xFFFFF9C4),
            child: Column(
              children: <Widget>[
                PriorityPicker(
                  selectedIndex: 3 - note.priority,
                  onTap: (index) {
                    isEdited = true;
                    note.priority = 3 - index;
                  },
                ),
                ColorPicker(
                  selectedIndex: note.color,
                  onTap: (index) {
                    setState(() {
                      color = index;
                    });
                    isEdited = true;
                    note.color = index;
                  },
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: TextField(
                        controller: titleController,
                        maxLength: 255,
                        style: Theme.of(context).textTheme.body1,
                        onChanged: (value) {
                          updateTitle();
                        },
                        decoration: InputDecoration.collapsed(
                          hintText: 'Title',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 100.0),
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 10,
                            maxLength: 255,
                            controller: descriptionController,
                            style: Theme.of(context).textTheme.body2,
                            onChanged: (value) {
                              updateDescription();
                            },
                            decoration: InputDecoration.collapsed(
                              hintText: 'Description',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.close_menu,
            overlayColor: Colors.black87,
            backgroundColor: Colors.blueAccent,
            children: [
              SpeedDialChild(
                  child: Icon(Icons.camera_alt),
                  backgroundColor: Colors.lightBlue,
                  label: "Camera",
                onTap: (){
                    getImage();
                    titleController.text.length == 0
                        ? showEmptyTitleDialog(context)
                        : _camera();
                },
              ),
              SpeedDialChild(
                  child: Icon(Icons.videocam),
                  backgroundColor: Colors.redAccent,
                  label: "Vedio"
              ),
              SpeedDialChild(
                  child: Icon(Icons.volume_up),
                  backgroundColor: Colors.yellow,
                  label: "Sound"
              ),
              SpeedDialChild(
                  child: Icon(Icons.edit),
                  backgroundColor: Colors.greenAccent,
                  label: "Text"
              ),
              SpeedDialChild(
                  child: Icon(Icons.sentiment_satisfied),
                  backgroundColor: Colors.pinkAccent,
                  label: "Sticker"
              ),
            ],
          ),

        ));
  }

  void showDiscardDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          title: Text(
            "Discard Changes?",
            style: Theme.of(context).textTheme.body1,
          ),
          content: Text("Are you sure you want to discard changes?",
              style: Theme.of(context).textTheme.body2),
          actions: <Widget>[
            FlatButton(
              child: Text("No",
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(color: Colors.purple)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text("Yes",
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(color: Colors.purple)),
              onPressed: () {
                Navigator.of(context).pop();
                moveToLastScreen();
              },
            ),
          ],
        );
      },
    );
  }

  void showEmptyTitleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          title: Text(
            "Title is empty!",
            style: Theme.of(context).textTheme.body1,
          ),
          content: Text('The title of the note cannot be empty.',
              style: Theme.of(context).textTheme.body2),
          actions: <Widget>[
            FlatButton(
              child: Text("Okay",
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(color: Colors.purple)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          title: Text(
            "Delete Note?",
            style: Theme.of(context).textTheme.body1,
          ),
          content: Text("Are you sure you want to delete this note?",
              style: Theme.of(context).textTheme.body2),
          actions: <Widget>[
            FlatButton(
              child: Text("No",
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(color: Colors.purple)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text("Yes",
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(color: Colors.purple)),
              onPressed: () {
                Navigator.of(context).pop();
                _delete();
              },
            ),
          ],
        );
      },
    );
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

  void updateTitle() {
    isEdited = true;
    note.title = titleController.text;
  }

  void updateDescription() {
    isEdited = true;
    note.description = descriptionController.text;
  }

  // Save data to database
  void _save() async {
    moveToLastScreen();

    note.date = DateFormat.yMMMd().format(DateTime.now());

    if (note.id != null) {
      await helper.updateNote(note);
    } else {
      await helper.insertNote(note);
    }
  }

  void _delete() async {
    await helper.deleteNote(note.id);
    moveToLastScreen();
  }

  void _camera() async {
    Center(
      child: _image == null
          ? Text('No image selected.')
          : Image.file(_image),
    );
    note.date = DateFormat.yMMMd().format(DateTime.now());

    if (note.id != null) {
      await helper.updateNote(note);
    } else {
      await helper.insertNote(note);
    }

  }


}
