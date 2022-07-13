import 'package:flutter/material.dart';

class ProfilePage {
  final int id;
  final String image, name, nik, email, phone;

  ProfilePage(
      {required this.id,
      required this.image,
      required this.nik,
      required this.name,
      required this.email,
      required this.phone});
}

List<ProfilePage> ProfilesItem = [
  ProfilePage(
      id: 1,
      image: 'assets/images/jhon.png',
      nik: '3205050107990055',
      name: 'Doni Setiadi',
      email: 'Dhony12@gmail.com',
      phone: '089662548161')
];
