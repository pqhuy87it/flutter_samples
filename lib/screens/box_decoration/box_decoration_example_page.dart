import 'package:flutter/material.dart';
import 'package:project_samples/utils/image_utils.dart';

class BoxDecorationExamplePage extends StatelessWidget {
  static String routeName = 'basics/box_decoration_example';

  const BoxDecorationExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BoxDecoration Example')),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.pinkAccent.shade100,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300, width: 3.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300, width: 3.0),
                image: DecorationImage(
                  image: const AssetImage('assets/images/full-bloom.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  border: Border.all(color: Colors.grey.shade300, width: 3.0),
                  image: DecorationImage(
                    image: const AssetImage('assets/images/full-bloom.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.rectangle
              ),
            ),
          ),
        ],
      ),
    );
  }
}
