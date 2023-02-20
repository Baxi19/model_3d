import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class App3D extends StatefulWidget {
  const App3D({Key? key}) : super(key: key);

  @override
  State<App3D> createState() => _App3DState();
}

class _App3DState extends State<App3D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(Object(fileName: 'assets/Comet.obj'));
          },
        ),
      ),
    );
  }
}
