import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../product/global/resource_context.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<ResourceContext>().clear();
              },
              icon: const Icon(Icons.remove))
        ],
        title: Text(context.read<ResourceContext>().model?.data?.length.toString() ?? ''),
      ),
      body: ImagePaths.ic_apple_with_school.toWidget(height: 100),
    );
  }
}

enum ImagePaths {
// ignore: constant_identifier_names
  ic_apple_with_school,
}

extension ImagePathsExtension on ImagePaths {
  String path() {
    return 'assets/png/$name.png';
  }

  Widget toWidget({double height = 24}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}
