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
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 50,
            crossAxisSpacing: 10,
            childAspectRatio: 2 / 2,
          ),
          children: List.generate(
            festivalData.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed(MyRoutes.PostEditor,
                      arguments: festivalData[index]);
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("${festivalData[index].image}"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
