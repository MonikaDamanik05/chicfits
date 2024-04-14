import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: notificationList.length,
        itemBuilder: (context, index) {
          final notification = notificationList[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12.0),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(notification.image),
                    radius: 24.0,
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notification.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          notification.message,
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          notification.time,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class NotificationModel {
  final String image;
  final String title;
  final String message;
  final String time;

  NotificationModel({
    required this.image,
    required this.title,
    required this.message,
    required this.time,
  });
}

List<NotificationModel> notificationList = [
  NotificationModel(
    image: 'assets/images/non_hijab_1.png',
    title: 'Baju Kebaya Kondangan Tersedia!',
    message:
        'Baju Kebaya Kondangan yang Anda inginkan telah tersedia untuk disewa. Silakan pesan sekarang!',
    time: '1 hour ago',
  ),
  NotificationModel(
    image: 'assets/images/hijab_2.png',
    title: 'Promo Spesial!',
    message:
        'Diskon 20% untuk penyewaan Kebaya Wisuda. Gunakan kode promo "KEBAYAWISUDA20".',
    time: '2 hours ago',
  ),
  NotificationModel(
    image: 'assets/images/pria_8.png',
    title: 'Produk Baru!',
    message:
        'Lihatlah koleksi Jas Pria terbaru kami sekarang! Banyak pilihan model dan warna.',
    time: '5 hours ago',
  ),
];
