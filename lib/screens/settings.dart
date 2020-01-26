import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Center(
        child: Icon(
          Icons.settings,
          color: Theme.of(context).primaryColor,
          size: 50,
        ),
      ),
    );
  }
}
