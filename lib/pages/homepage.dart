import 'package:catalogapp/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            // SizedBox(
            //   height: 200,
            //   child: Image.network(
            //       "https://c.tenor.com/y2JXkY1pXkwAAAAC/cat-computer.gif"),
            // ),
            FormBuilderImagePicker(
              name: 'singleAvatarPhoto',
              decoration: const InputDecoration(
                labelText: 'Pick Photos',
              ),
              iconColor: Colors.blue,
              // transformImageWidget: (context, displayImage) => Card(
              //   child: displayImage,
              // ),
              showDecoration: true,
              maxImages: 5,
              previewAutoSizeWidth: false,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Share Files"))
          ],
        ),
      ),
    );
  }
}
