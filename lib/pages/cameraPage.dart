import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

class CameraPage extends StatelessWidget {
  CameraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormBuilderImagePicker Example'),
      ),
      body: Center(
        child: Column(
          children: [
            FormBuilderImagePicker(
              name: 'photos',
              decoration: const InputDecoration(labelText: 'Pick Photos'),
              maxImages: 5,
              previewAutoSizeWidth: true,
              previewMargin: const EdgeInsetsDirectional.only(end: 8),
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
