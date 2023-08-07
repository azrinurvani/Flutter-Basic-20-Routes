import 'package:flutter/material.dart';
import 'package:flutter_basic_20_routes/pages/photo_page.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});
  static const nameRoute = '/gallery_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Gallery Page",
              style: TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "<< Back",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PhotoPage.nameRoute);
                  },
                  child: const Text(
                    ">> Next",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
