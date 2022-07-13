import 'package:flutter/material.dart';
import 'package:sistem_antrian/models/profile.dart';

class ItemProfile extends StatelessWidget {
  final ProfilePage id, image, nik, name, email, phone;
  const ItemProfile(
      {Key? key,
      required this.id,
      required this.image,
      required this.nik,
      required this.name,
      required this.email,
      required this.phone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            child: Image.asset(
              image.image,
              width: 60,
            ),
          )
        ],
      ),
    );
  }
}
