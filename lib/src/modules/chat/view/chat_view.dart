import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import '../../../data/models/chat_model.dart';
import '../../../utils/app_styles.dart';
import 'package:intl/intl.dart' as intl;

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<Messages> messages = [
    Messages(
        text: "Hi",
        date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
        isSentByMe: false),
    Messages(
        text: "Hi",
        date: DateTime.now().subtract(const Duration(days: 2, minutes: 3)),
        isSentByMe: true),
    Messages(
        text: "Hi ",
        date: DateTime.now().subtract(const Duration(days: 2, minutes: 4)),
        isSentByMe: false),
    Messages(
        text: "Hi",
        date: DateTime.now().subtract(const Duration(days: 2, minutes: 4)),
        isSentByMe: true),
    Messages(
        text: "Hi",
        date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
        isSentByMe: false),
    Messages(
        text: "Hi",
        date: DateTime.now().subtract(Duration(days: 2, minutes: 3)),
        isSentByMe: true),
    Messages(
        text: "Hi How are you!",
        date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
        isSentByMe: false),
    Messages(
        text: "Hi",
        date: DateTime.now().subtract(Duration(days: 2, minutes: 3)),
        isSentByMe: true),
    Messages(
        text: "Hi",
        date: DateTime.now().subtract(Duration(days: 2, minutes: 4)),
        isSentByMe: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyShade,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        title: Text('Salman', style: TextStyle(color: AppColors.black),),
        iconTheme: const IconThemeData(color: AppColors.black),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
              radius: 70,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: GroupedListView<Messages, DateTime>(
                padding: const EdgeInsets.all(8.0),
                reverse: true,
                order: GroupedListOrder.DESC,
                elements: messages,
                groupBy: (message) => DateTime(
                    message.date.year, message.date.month, message.date.day),
                groupHeaderBuilder: (Messages messages) => SizedBox(
                  height: 40,
                  child: Center(
                    child: Card(
                      color: AppColors.greyShade,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          intl.DateFormat.yMMMd().format(messages.date),
                        ),
                      ),
                    ),
                  ),
                ),
                itemBuilder: (context, Messages messages) => Align(
                  alignment: messages.isSentByMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Card(
                      color: messages.isSentByMe
                          ? AppColors.btnBgColor
                          : AppColors.white,
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          messages.text,
                          style: TextStyle(
                              color: messages.isSentByMe
                                  ? AppColors.white
                                  : AppColors.black),
                        ),
                      )),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.btnBgColor,
                    suffixIcon: const Icon(
                      Icons.send,
                      color: AppColors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(color: AppColors.btnBgColor),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide.none
                    ),
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    hintText: 'Send',
                    hintStyle: const TextStyle(color: AppColors.white)),
                onSubmitted: (text) {
                  final message = Messages(
                    text: text,
                    date: DateTime.now(),
                    isSentByMe: true,
                  );
                  setState(() => messages.add(message));
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
