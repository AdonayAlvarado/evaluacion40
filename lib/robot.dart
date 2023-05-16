import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class robot extends StatefulWidget {
  const robot({Key? key}) : super(key: key);

  @override
  State<robot> createState() => _robotState();
}

class _robotState extends State<robot> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 116, 236),
      body: Center(
        child: Lottie.network(
          "https://assets7.lottiefiles.com/packages/lf20_GbabwrUY2k.json",
          width: 300,
          controller: _animationController,
          onLoaded: (composition) {
            _animationController
              ..duration = composition.duration
              ..forward()
              ..repeat(reverse: true);
          },
        ),
      ),
    );
  }
}
