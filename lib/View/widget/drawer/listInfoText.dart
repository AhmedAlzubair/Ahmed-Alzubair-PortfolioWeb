import 'package:flutter/material.dart';

class ListInfoText extends StatelessWidget {
  final String title;
  final String text;
   Color? color;
  Widget? loading;
  ListInfoText(
      {Key? key, required this.title, required this.text, this.loading, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style:  TextStyle(color: color,fontWeight: FontWeight.bold,)),
      trailing: Text(text,style:  TextStyle(color: color,fontSize: 15)),
      leading: loading,
    );
  }
}
