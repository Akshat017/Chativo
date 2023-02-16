import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: webAppBarColor,
          border: Border(
              right: BorderSide(
            color: dividerColor,
          ))),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg'),
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.comment,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
