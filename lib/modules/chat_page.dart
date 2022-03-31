import 'package:chat_app/components/chat.dart';
import 'package:chat_app/models/chat_users.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        text: "Mạnh Thế Tài",
        secondaryText: "Toi la sinh vien nam 3",
        image: "images/userImage1.jpg",
        time: "Đang hoạt động"),
    ChatUsers(
        text: "Nguyễn Quang Tươi",
        secondaryText: "Tôi là Tươi",
        image: "images/userImage2.jpg",
        time: "1p trước"),
    ChatUsers(
        text: "Nam Hoài Nguyễn",
        secondaryText: "Nam Bịp",
        image: "images/userImage4.jpg",
        time: "10p trước"),
  ];