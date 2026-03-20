import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget featureItem(IconData icon, String title) {
    return Column(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: Colors.amber),
        ),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget newsItem(String text) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(text, style: const TextStyle(color: Colors.white)),
          trailing: const Icon(Icons.chevron_right, color: Colors.white70),
        ),
        const Divider(color: Colors.white24),
      ],
    );
  }

  Widget sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Xem thêm',
            style: TextStyle(color: Colors.amber, fontSize: 14),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1e),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /// HEADER
            Container(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Color(0xffe3c47a), Color(0xffcaa35d)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: <Widget>[
                  /// TITLE BAR
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        'BTM - Trading',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.search),
                          SizedBox(width: 16),
                          Icon(Icons.notifications_none),
                          SizedBox(width: 16),
                          Icon(Icons.person_outline),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  /// USER INFO
                  Row(
                    children: const <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('ID: 7450'),
                            SizedBox(height: 4),
                            Text('Cuong@gmail.com'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('083 445 667'),
                            SizedBox(height: 4),
                            Text('Hạn Vip: 27/10/2024'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// BANNER
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/banner.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  bottom: 30,
                  left: 16,
                  right: 16,
                  child: Text(
                    'Thị Trường Chứng Khoán Cuối Quý 2 Đầu Quý 3 Ra Sao',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            /// FEATURE GRID
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  featureItem(Icons.info, 'Giới thiệu'),
                  featureItem(Icons.touch_app, 'HDSD'),
                  featureItem(Icons.headset_mic, 'Hỗ trợ'),
                  featureItem(Icons.confirmation_number, 'Mua gói'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// CONTENT
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  /// KHUYEN NGHI
                  sectionHeader('Khuyến nghị'),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Danh sách các mã cổ phiếu tăng và giả '
                      'mạnh nhất những phiên gần đây',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),

                  const SizedBox(height: 12),

                  newsItem('Vàng thế giới tăng sau dữ liệu GDP Mỹ'),

                  /// CHO MUA
                  sectionHeader('Chờ mua'),

                  newsItem(
                    'Nhịp đập Thị trường 31/05: Tâm lý giằng co kéo dài, VN-Index dừng phiên sáng',
                  ),

                  const SizedBox(height: 20),

                  /// PROMO BANNER
                  Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/promo.png',
                          height: 180,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        left: 16,
                        bottom: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'BTM Trader',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Mang lại lợi nhuận cho bạn',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),

      /// BOTTOM NAV
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff1c1c1e),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Danh mục'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Chờ mua'),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Thị trường',
          ),
        ],
      ),
    );
  }
}
