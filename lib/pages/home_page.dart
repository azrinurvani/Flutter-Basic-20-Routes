import 'package:flutter/material.dart';
import 'package:flutter_basic_20_routes/pages/gallery_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //static const agar tidak lupa dan typo
  static const nameRoute = '/home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(GalleryPage.nameRoute);
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return const GalleryPage();
          //     },
          //   ),
          // );
        },
        child: const Icon(
          Icons.arrow_right_alt,
        ),
      ),
    );
  }
}
