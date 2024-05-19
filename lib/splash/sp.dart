import 'package:flutter/material.dart';



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _topAligment;
  late Animation<Alignment> _bottomAligment;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _topAligment = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.topLeft, end: Alignment.bottomLeft),
        weight: 1,
      ),
    ]).animate(_controller);

    _bottomAligment = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.bottomRight, end: Alignment.bottomRight),
        weight: 1,
      ),
      /*
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.bottomLeft, end: Alignment.topLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween:
            Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.topRight, end: Alignment.bottomRight),
        weight: 1,
      ),
      */
    ]).animate(_controller);

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: AnimatedBuilder(
                animation: _controller,
                builder: (context, _) {
                  return Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0x0F969C), Colors.white],
                          begin: _topAligment.value,
                          end: _bottomAligment.value,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  );
                }),
          ),
        ));
  }
}