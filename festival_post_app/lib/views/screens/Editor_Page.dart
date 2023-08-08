import 'package:festival_post_app/Utils/Color_utils.dart';
import 'package:festival_post_app/Utils/Quote_routs.dart';
import 'package:festival_post_app/Utils/route_utils.dart';
import 'package:flutter/material.dart';

import '../../Models/Quote_models.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});

  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  String? F_Quote;

  Color f_color = Colors.black;
  Color b_color = Mybg;

  @override
  Widget build(BuildContext context) {
    Object? Festival = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mybg,
        foregroundColor: Colors.white,
        title: Text("Editing Page ${Festival}"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 300,
              width: double.infinity,
              color: b_color,
              child: Center(
                child: Text(
                  "${F_Quote}",
                  style: TextStyle(
                    color: f_color,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Font Color",
              style: TextStyle(fontSize: 20, color: Mybg),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  Colors.primaries.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        f_color = Colors.primaries[index];
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 45,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.primaries[index % 18],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Background Color",
              style: TextStyle(
                fontSize: 20,
                color: Mybg,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  Colors.primaries.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        b_color = Colors.primaries[index];
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 45,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.primaries[index % 18],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text("Select Quote", style: TextStyle(fontSize: 18, color: Mybg)),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 150,
              color: Mybg,
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    allQuotes.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          F_Quote = allQuotes[index]['quote'];
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          height: 100,
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Text(allQuotes[index]['quote'],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Mybg)),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(allQuotes[index]['category'],
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
