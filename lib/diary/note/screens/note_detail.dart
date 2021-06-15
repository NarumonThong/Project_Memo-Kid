// import 'dart:io';
// import 'package:app_memokid/diary/note/db_helper/db_helper.dart';
// import 'package:app_memokid/diary/note/modal_class/notes.dart';
// import 'package:app_memokid/diary/note/utils/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:intl/intl.dart';
//
// class NoteDetail extends StatefulWidget {
//   final String appBarTitle;
//   final Note note;
//
//   NoteDetail(this.note, this.appBarTitle);
//
//   @override
//   State<StatefulWidget> createState() {
//     return NoteDetailState(this.note, this.appBarTitle);
//   }
// }
//
// class NoteDetailState extends State<NoteDetail> {
//   File _image;
//
//   Future getImage() async {
//     var image = await ImagePicker.pickImage(source: ImageSource.camera);
//
//     setState(() {
//       _image = image;
//     });
//   }
//
//   DatabaseHelper helper = DatabaseHelper();
//
//   String appBarTitle;
//   Note note;
//   TextEditingController titleController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();
//   int color;
//   bool isEdited = false;
//
//   NoteDetailState(this.note, this.appBarTitle);
//
//   @override
//   Widget build(BuildContext context) {
//     titleController.text = note.title;
//     descriptionController.text = note.description;
//     color = note.color;
//     return WillPopScope(
//         onWillPop: () {
//           isEdited ? showDiscardDialog(context) : moveToLastScreen();
//         },
//         child: Scaffold(
//           appBar: AppBar(
//             elevation: 0,
//             backgroundColor: Color(0xFFFFE082),
//             leading: Container(),
// //            leading: IconButton(
// //                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
// //                onPressed: () {
// //                  isEdited ? showDiscardDialog(context) : moveToLastScreen();
// //                }),
//             actions: <Widget>[
//               IconButton(
//                 icon: Icon(
//                   Icons.save,
//                   color: Colors.black,
//                 ),
//                 onPressed: () {
//                   titleController.text.length == 0
//                       ? showEmptyTitleDialog(context)
//                       : _save();
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.delete, color: Colors.black),
//                 onPressed: () {
//                   showDeleteDialog(context);
//                 },
//               )
//             ],
//           ),
//           resizeToAvoidBottomPadding: false,
//           body: Container(
//             color: Color(0xFFFFF9C4),
//             child: Column(
//               children: <Widget>[
//                 PriorityPicker(
//                   selectedIndex: 3 - note.priority,
//                   onTap: (index) {
//                     isEdited = true;
//                     note.priority = 3 - index;
//                   },
//                 ),
//                 ColorPicker(
//                   selectedIndex: note.color,
//                   onTap: (index) {
//                     setState(() {
//                       color = index;
//                     });
//                     isEdited = true;
//                     note.color = index;
//                   },
//                 ),
//                 SizedBox(
//                   height: 8.0,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Card(
//                     color: Colors.white,
//                     child: Padding(
//                       padding: EdgeInsets.all(16.0),
//                       child: TextField(
//                         controller: titleController,
//                         maxLength: 255,
//                         style: Theme.of(context).textTheme.body1,
//                         onChanged: (value) {
//                           updateTitle();
//                         },
//                         decoration: InputDecoration.collapsed(
//                           hintText: 'หัวข้อ',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 8, top: 8, right: 8),
//                       child: Card(
//                         child: Padding(
//                           padding: EdgeInsets.all(16.0),
//                           child: TextFormField(
//                             controller: descriptionController,
//                             maxLines: 10,
//                             onChanged: (value) {
//                               updateDescription();
//                             },
//                             decoration: InputDecoration.collapsed(
//                               hintText: 'คำอธิบาย',
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//
//
//         ));
//   }
//
//   void showDiscardDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10.0))),
//           title: Text(
//             "คำเตือน?",
//             style: Theme.of(context).textTheme.body1,
//           ),
//           content: Text("คุณแน่ใจหรือไม่ว่าต้องการยกเลิกการเปลี่ยนแปลง?",
//               style: Theme.of(context).textTheme.body2),
//           actions: <Widget>[
//             FlatButton(
//               child: Text("ยกเลิก",
//                   style: Theme.of(context)
//                       .textTheme
//                       .body1
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             FlatButton(
//               child: Text("ตกลง",
//                   style: Theme.of(context)
//                       .textTheme
//                       .body1
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 moveToLastScreen();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void showEmptyTitleDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
// //          backgroundColor: Colors.amber[100],
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10.0))),
//           title: Text(
//             "คำเตือน!",
//             style: TextStyle(
//               color: Colors.red,
//               fontSize: 16.0
//             ),
//           ),
//           content: Padding(
//             padding: const EdgeInsets.only(left: 30.0),
//             child: Text('กรุณากรอกหัวข้อที่จะบันทึก',
//               style: TextStyle(
//                   color: Colors.brown,
//                   fontSize: 16.0
//               ),
//             ),
//           ),
//           actions: <Widget>[
//             FlatButton(
//               child: Text("ตกลง",
//                   style: Theme.of(context)
//                       .textTheme
//                       .body1
//                       .copyWith(color: Colors.indigo)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void showDeleteDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10.0))),
//           title: Text(
//             "คำเตือน?",
//             style: Theme.of(context).textTheme.body1,
//           ),
//           content: Text("คุณต้องการลบบันทึกนี้จริงหรือไม่?",
//               style: Theme.of(context).textTheme.body2),
//           actions: <Widget>[
//             FlatButton(
//               child: Text("ยกเลิก",
//                   style: Theme.of(context)
//                       .textTheme
//                       .body1
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             FlatButton(
//               child: Text("ตกลง",
//                   style: Theme.of(context)
//                       .textTheme
//                       .body1
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _delete();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void moveToLastScreen() {
//     Navigator.pop(context, true);
//   }
//
//   void updateTitle() {
//     isEdited = true;
//     note.title = titleController.text;
//   }
//
//   void updateDescription() {
//     isEdited = true;
//     note.description = descriptionController.text;
//   }
//
//   // Save data to database
//   void _save() async {
//     moveToLastScreen();
//
//     note.date = DateFormat.yMMMd().format(DateTime.now());
//
//     if (note.id != null) {
//       await helper.updateNote(note);
//     } else {
//       await helper.insertNote(note);
//     }
//   }
//
//   void _delete() async {
//     await helper.deleteNote(note.id);
//     moveToLastScreen();
//   }
//
// }
