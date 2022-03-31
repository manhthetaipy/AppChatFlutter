import 'package:app/components/chat_bubble.dart';
import 'package:app/components/chat_detail_page_appbar.dart';
import 'package:app/models/chat_message.dart';
import 'package:app/models/send_menu_items.dart';
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
  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            color: Color(0xff737373),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Container(
                      height: 4,
                      width: 50,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: menuItems[index].color.shade50,
                            ),
                            height: 50,
                            width: 50,
                            child: Icon(
                              menuItems[index].icons,
                              size: 20,
                              color: menuItems[index].color.shade400,
                            ),
                          ),
                          title: Text(menuItems[index].text),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatDetailPageAppBar(),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: chatMessage.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ChatBubble(
                chatMessage: chatMessage[index],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 16, bottom: 10),
              height: 80,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showModal();
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Nhập tin nhắn.....",
                          hintStyle: TextStyle(color: Colors.green.shade500),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.only(right: 30, bottom: 50),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                backgroundColor: Colors.red,
                elevation: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
