import 'package:flutter/material.dart';

class Dokter {
  final String? images, name, department, str, jam, tahun;
  final int id;

  Dokter(
      {required this.id,
      required this.images,
      required this.name,
      required this.department,
      required this.str,
      required this.tahun,
      required this.jam});
}

List<Dokter> dokters = [
  Dokter(
      id: 1,
      images: 'assets/images/anak.png',
      name: 'Sinta',
      department: 'Dokter Anak',
      str: 'STR, 12334455656',
      tahun: '9 Tahun',
      jam: '08:00 AM - 11:00 AM'),
];
