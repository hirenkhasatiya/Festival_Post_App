import 'dart:io';
import 'dart:ui';

import 'package:festival_post_app/Models/Quote_models.dart';
import 'package:festival_post_app/Utils/Color_utils.dart';
import 'package:festival_post_app/Utils/Quote_routs.dart';
import 'package:festival_post_app/Utils/route_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});

  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  GlobalKey key = GlobalKey();
  Color f_color = Colors.black;
  Color b_color = Mybg;

  int x = 0;
  int y = 0;

  int i = 0;

  String bgImage =
      "https://e0.pxfuel.com/wallpapers/156/840/desktop-wallpaper-pure-simple-art-blank-colors-ipad.jpg";
  @override
  Widget build(BuildContext context) {
    Festival festival = ModalRoute.of(context)!.settings.arguments as Festival;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mybg,
        foregroundColor: Colors.white,
        title: Text("Editing Page"),
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
            RepaintBoundary(
              key: key,
              child: Container(
                padding: EdgeInsets.all(20),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: b_color,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                        festival.bgimage[i % festival.bgimage.length]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: SelectableText(
                    "Happiness, Joy, Health and Wealth may reach your door this festival. Have a great celebration!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: f_color,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () async {
                    Clipboard.setData(
                      ClipboardData(
                          text:
                              "${festival.Quote}  \n\n\n I've got exciting from : Quotes app\nlink : "),
                    ).then(
                      (value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Quote Cliped"),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.green,
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.copy,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () async {
                    final boundary = key.currentContext?.findRenderObject()
                        as RenderRepaintBoundary?;
                    final image = await boundary?.toImage();
                    final byteData =
                        await image?.toByteData(format: ImageByteFormat.png);
                    final imageBytes = byteData?.buffer.asUint8List();

                    if (imageBytes != null) {
                      final directory =
                          await getApplicationDocumentsDirectory();
                      final imagePath =
                          await File('${directory.path}/container_image.png')
                              .create();
                      await imagePath.writeAsBytes(imageBytes);

                      ImageGallerySaver.saveFile(imagePath.path);
                    }
                  },
                  icon: Icon(Icons.save_alt),
                ),
                IconButton(
                  onPressed: () async {
                    final boundary = key.currentContext?.findRenderObject()
                        as RenderRepaintBoundary?;
                    final image = await boundary?.toImage();
                    final byteData =
                        await image?.toByteData(format: ImageByteFormat.png);
                    final imageBytes = byteData?.buffer.asUint8List();

                    if (imageBytes != null) {
                      final directory =
                          await getApplicationDocumentsDirectory();
                      final imagePath =
                          await File('${directory.path}/container_image.png')
                              .create();
                      await imagePath.writeAsBytes(imageBytes);

                      ShareExtend.share(imagePath.path, "file");
                    }
                  },
                  icon: Icon(Icons.share),
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Background Color",
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
                        b_color = Colors.primaries[index];
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 45,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.primaries[index % 18],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text("Select Background",
                style: TextStyle(fontSize: 18, color: Mybg)),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  i++;
                  bgImage = festival.bgimage[i % (festival.bgimage.length)];
                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Mybg,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(bgImage),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Change Background",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
