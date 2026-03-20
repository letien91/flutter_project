// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';

class StarrySky extends StatefulWidget {
  const StarrySky({super.key, this.minStar = 50, this.maxStar = 100});

  final int minStar;
  final int maxStar;

  @override
  State<StarrySky> createState() => _StarrySkyState();
}

class _StarrySkyState extends State<StarrySky> with TickerProviderStateMixin {
  final Random _random = Random();
  List<Star>? _stars; // null ban đầu → chưa có size
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 999999),
    )..repeat();
  }

  List<Star> _generateStars(Size size) {
    final double height = MediaQuery.of(context).size.height;
    final int count = (size.height * 500 / height).round();
    // final count = (size.width * size.height / 8000)
    //     .clamp(widget.minStar, widget.maxStar)
    //     .round();

    return List<Star>.generate(count, (_) {
      return Star(
        position: Offset(
          _random.nextDouble() * size.width,
          _random.nextDouble() * size.height,
        ),
        size: 1.0,
        speed: 0.2 + _random.nextDouble() * 0.6,
        angle: _random.nextDouble() * 2 * pi,
        phase: _random.nextDouble() * 10,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size size = constraints.biggest;

        // Chỉ tạo stars 1 lần khi có kích thước hợp lệ
        _stars ??= _generateStars(size);

        return AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, _) {
            return CustomPaint(
              size: Size.infinite,
              painter: StarPainter(
                stars: _stars!,
                time: _controller.value * 1000,
                screenSize: size,
                random: _random,
              ),
            );
          },
        );
      },
    );
  }
}

class Star {
  Offset position;
  final double size;
  final double speed;
  final double angle;
  final double phase;

  Star({
    required this.position,
    required this.size,
    required this.speed,
    required this.angle,
    required this.phase,
  });
}

class StarPainter extends CustomPainter {
  final List<Star> stars;
  final double time;
  final Size screenSize;
  final Random random;

  StarPainter({
    required this.stars,
    required this.time,
    required this.screenSize,
    required this.random,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint corePaint = Paint()..style = PaintingStyle.fill;

    for (final Star star in stars) {
      // ── Di chuyển ────────────────────────────────────────
      final double dx = cos(star.angle) * star.speed;
      final double dy = sin(star.angle) * star.speed;
      star.position = star.position.translate(dx, dy);

      // ── Nhấp nháy (nhanh & tự nhiên hơn) ─────────────────
      // Chu kỳ ~2–3.5 giây, mỗi sao lệch phase khác nhau

      final double t = time + star.phase; // chu kỳ cơ bản ~2.2 giây
      final double pulse = 0.5 + 0.5 * sin(t * 1300.0);
      final double opacity = 0.3 + 0.7 * pulse.clamp(0.0, 1.0);

      final double glowIntensity = opacity; // glow theo opacity sao

      // ── Vẽ glow bằng RadialGradient (từ tâm sáng → viền mờ) ──
      final Rect glowRect = Rect.fromCircle(
        center: star.position,
        radius: star.size * 5.5, // bán kính glow ~5-6 lần kích thước sao
      );
      final Shader glowShader = RadialGradient(
        center: Alignment.center,
        radius: 0.5, // tâm sáng chiếm ~60% bán kính
        colors: <Color>[
          Colors.white.withOpacity(glowIntensity * 0.9), // tâm rất sáng
          Colors.white.withOpacity(glowIntensity * 0.25), // giữa
          Colors.white.withOpacity(0.0), // viền mờ hoàn toàn
        ],
        stops: const <double>[0.0, 0.4, 1.0],
      ).createShader(glowRect);
      corePaint.shader = glowShader;

      canvas.drawCircle(star.position, star.size * 5.5, corePaint);

      // Reset shader để vẽ sao chính
      corePaint.shader = null;

      // ── Vẽ ngôi sao lõi (trắng sáng) ─────────────────────
      corePaint.color = Colors.white.withOpacity(
        opacity * 0.98 + 0.02,
      ); // gần như full opacity khi sáng max
      canvas.drawCircle(star.position, star.size, corePaint);

      // ── Tái sinh khi ra khỏi màn hình ────────────────────
      if (!_isInScreen(star.position, size)) {
        final int side = random.nextInt(4);
        double x, y;

        switch (side) {
          case 0: // top
            x = random.nextDouble() * size.width;
            y = -30 - random.nextDouble() * 60;
            break;
          case 1: // right
            x = size.width + 30 + random.nextDouble() * 60;
            y = random.nextDouble() * size.height;
            break;
          case 2: // bottom
            x = random.nextDouble() * size.width;
            y = size.height + 30 + random.nextDouble() * 60;
            break;
          default: // left
            x = -30 - random.nextDouble() * 60;
            y = random.nextDouble() * size.height;
            break;
        }

        star.position = Offset(x, y);
      }
    }
  }

  bool _isInScreen(Offset p, Size s) {
    const double margin = 30.0;
    return p.dx > -margin &&
        p.dx < s.width + margin &&
        p.dy > -margin &&
        p.dy < s.height + margin;
  }

  @override
  bool shouldRepaint(covariant StarPainter oldDelegate) => true;
}
