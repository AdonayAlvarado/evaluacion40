import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class emoji extends StatefulWidget {
  const emoji({Key? key}) : super(key: key);

  @override
  State<emoji> createState() => _emojiState();
}

class _emojiState extends State<emoji> with SingleTickerProviderStateMixin {
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
      backgroundColor: Color.fromARGB(255, 112, 177, 52),
      body: Center(
        child: Lottie.network(
          "https://assets3.lottiefiles.com/packages/lf20_RfD6Lb.json",
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
