import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          /// BACKGROUND IMAGE
          Positioned.fill(
            child: Image.asset('assets/images/icon_app.jpg', fit: BoxFit.cover),
          ),

          /// LOGIN CARD
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 520,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xFF1E1E1E), Color(0xFF2E2E2E)],
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 40),

                  /// TITLE
                  const Text(
                    'Đăng nhập',
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// PHONE INPUT
                  Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3B3F46),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Nhập số điện thoại',
                        hintStyle: TextStyle(color: Color(0xFF8B8B8B)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3B3F46),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Nhập số password',
                        hintStyle: TextStyle(color: Color(0xFF8B8B8B)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// LOGIN BUTTON
                  Container(
                    height: 54,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: <Color>[Color(0xFFEDD185), Color(0xFFE8BD70)],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Đăng nhập',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// REGISTER TEXT
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        children: <InlineSpan>[
                          TextSpan(text: 'Bạn chưa có tài khoản. '),
                          TextSpan(
                            text: 'Đăng ký ngay',
                            style: TextStyle(color: Color(0xFFE8BD70)),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Spacer(),

                  /// TERMS
                  const Center(
                    child: Text(
                      'Điều khoản và dịch vụ',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
