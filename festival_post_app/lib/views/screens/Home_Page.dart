import 'dart:math';

import 'package:festival_post_app/Models/Quote_models.dart';
import 'package:festival_post_app/Utils/Color_utils.dart';
import 'package:festival_post_app/Utils/Quote_routs.dart';
import 'package:festival_post_app/Utils/route_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mybg,
        foregroundColor: Colors.white,
        title: const Text("Festival Post Creator"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(
                Festival.length,
                (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed(MyRoutes.PostEditor,
                              arguments: Festival[index]);
                        });
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Mybg,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            Festival[index],
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    )).toList(),
          ),
        ),
      ),
    );
  }
}
