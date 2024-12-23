import 'package:flutter/material.dart';

AppBar buildAppBar(context, {required String title, required backgroundColor}) {
  return AppBar(
    backgroundColor: backgroundColor,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.arrow_back_ios_new,
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 19.0,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w700,
        height: 0.0,
      ),
    ),
  );
}
