import 'package:chat_app/components/chat_bubble.dart';
import 'package:chat_app/components/chat_detail_page_appbar.dart';
import 'package:chat_app/models/chat_message.dart';
import 'package:chat_app/models/send_menu_items.dart';
import 'package:flutter/material.dart';

enum MessageType {
  Sender,
  Receiver,
}

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> chatMessage = [
    ChatMessage(message: "Chào bạn", type: MessageType.Receiver),
    ChatMessage(
        message: "Cho mình làm quen được không", type: MessageType.Receiver),
    ChatMessage(
        message: "Được bạn, bạn là sinh viên hả?", type: MessageType.Sender),
    ChatMessage(
        message: "Mình là sinh viên năm 2 còn bạn?",
        type: MessageType.Receiver),
    ChatMessage(message: "Toi la sinh vien nam 3", type: MessageType.Sender),
  ];

  List<SendMenuItems> menuItems = [
    SendMenuItems(
        text: "Ảnh và video", icons: Icons.image, color: Colors.amber),
    SendMenuItems(
        text: "Tài liệu", icons: Icons.insert_drive_file, color: Colors.blue),
    SendMenuItems(
        text: "Ghi âm", icons: Icons.music_note, color: Colors.orange),
    SendMenuItems(
        text: "Ví trí", icons: Icons.location_on, color: Colors.green),
    SendMenuItems(
        text: "Danh thiếp", icons: Icons.person, color: Colors.purple),
  ];
