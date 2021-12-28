import 'dart:convert';

import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  final String image;
  final String fullName;
  final String age;
  final String role;
  final String details;
  const ViewPage({
    Key? key,
    required this.image,
    required this.fullName,
    required this.age,
    required this.role,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About fullName"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image.asset("assets/images/players/$image"),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(
                children: [
                  ListTile(
                    title: Text("$fullName"),
                    subtitle: Text("$role"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text("$details"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
