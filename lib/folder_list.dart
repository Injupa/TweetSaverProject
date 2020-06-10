import 'package:flutter/material.dart';

class FolderListLayout extends StatefulWidget {
  @override
  _FolderListLayoutState createState() => _FolderListLayoutState();
}

List <String> folders = [
  'Tweets Trabajo',
  'Memes'
];


class _FolderListLayoutState extends State<FolderListLayout> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
      itemCount: folders.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Icon(Icons.folder),
            title: Text(folders[index]),
            enabled: true,
            onTap: () {Navigator.pushNamed(context, '/listTweet');}, //Asignar función navigation para a través del id de la carpeta entrar en la lista de tweets por su ID.
          ),
        );
      },
    );
  }
}