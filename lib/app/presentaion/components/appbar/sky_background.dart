import 'package:flutter/material.dart';
import 'package:template_project/app/presentaion/components/appbar/star_sky.dart';

class SkyBackGround extends StatefulWidget {
  const SkyBackGround({super.key});

  @override
  State<SkyBackGround> createState() => _SkyBackGroundState();
}

class _SkyBackGroundState extends State<SkyBackGround>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<Color?> _color2Anim;
  late Animation<Color?> _color3Anim;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true); // repeat + reverse để tạo hiệu ứng ping-pong mượt

    // Màu 2: vàng → xanh lá → vàng → ...
    _color2Anim = ColorTween(
      begin: const Color.fromARGB(255, 41, 23, 71),
      end: const Color.fromARGB(255, 44, 23, 108),
    ).animate(_controller);

    // Màu 3: xanh lá đậm → xanh dương → xanh lá đậm → ...
    _color3Anim = ColorTween(
      begin: const Color.fromARGB(255, 114, 62, 204),
      end: const Color.fromARGB(255, 70, 32, 182),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft, // trái giữa
              end: Alignment.centerRight, // phải giữa
              colors: <Color>[
                _color2Anim.value ?? Colors.yellow,
                _color3Anim.value ?? Colors.green[800]!,
              ],
            ),
          ),
          child: ClipRRect(child: StarrySky()),
        );
      },
    );
  }
}
