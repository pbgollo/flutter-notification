import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {

    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Notificações",
              style: GoogleFonts.bebasNeue(
                fontSize: 25,
                fontWeight: FontWeight.w400, 
                color: Colors.grey[600], 
              ),
            ),
            const SizedBox(width: 10),
            Icon(Icons.notifications_active_outlined,
              size: 28,
              color: Colors.grey[600],
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Text(message.notification!.title.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 5),
            Text(message.notification!.body.toString(),
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

}