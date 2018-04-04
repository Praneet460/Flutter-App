import 'package:flutter/material.dart';
import 'modal/contact.dart';

class ContactListItem extends StatelessWidget {
  final ContactModal _contactModal;

  ContactListItem(this._contactModal);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        leading: new CircleAvatar(child: new Text(_contactModal.companyName[0])),
        title: new Text(_contactModal.companyName,
            style: const TextStyle(
            color: Colors.black45,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 25.0
        )),
        subtitle: new Text(_contactModal.ceo,
            style: const TextStyle(
                color: Colors.blueGrey,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w600,
                fontSize: 20.0
            ))
        );
  }
}