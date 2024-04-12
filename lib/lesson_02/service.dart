import 'package:flutter/material.dart';

void navigation(BuildContext context, Widget nameScreen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => nameScreen));
}
