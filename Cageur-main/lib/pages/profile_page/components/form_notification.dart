import 'package:flutter/material.dart';

class Form_Notification extends StatelessWidget {
  const Form_Notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 70),
      child: Form(
          child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '+6289662548161',
                prefixIcon: Icon(Icons.phone)),
          ),
          TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Cageur@gmail.com',
                prefixIcon: Icon(Icons.mail)),
          ),
          TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '3205050107990055',
                prefixIcon: Icon(Icons.fence)),
          ),
        ],
      )),
    );
  }
}
