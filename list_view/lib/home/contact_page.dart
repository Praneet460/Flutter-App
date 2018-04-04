import 'package:flutter/material.dart';
import 'contactlist/contact_list.dart';
import 'contactlist/modal/contact.dart';
class ContactPage extends StatelessWidget {
  _buildContactList() {
    return <ContactModal>[
      const ContactModal(
          companyName: 'Accenture', ceo: 'Pierre Nanterme'),
      const ContactModal(
          companyName: 'Amazon', ceo: 'Jeff Bezos'),
      const ContactModal(
          companyName: 'Apple', ceo: 'Tim Cook'),
      const ContactModal(
          companyName: 'Cognizant', ceo: "Frank D'Souza"),
      const ContactModal(
          companyName: 'Ernst & Young', ceo: 'Jim Turley'),
      const ContactModal(
          companyName: 'Facebook', ceo: 'Mark Zuckerberg'),
      const ContactModal(
          companyName: 'Google', ceo: 'Sundar Pichai'),
      const ContactModal(
          companyName: 'McKinsey & Company', ceo: 'Dominic Barton'),
      const ContactModal(
          companyName: 'Microsoft', ceo: 'Satya Nadella'),
      const ContactModal(
          companyName: 'MobiKwik', ceo: 'Bipin Preet Singh'),
      const ContactModal(
          companyName: 'Netflix', ceo: 'Reed Hastings'),
      const ContactModal(
          companyName: 'Paypal', ceo: 'Renu Satti'),
      const ContactModal(
          companyName: 'Qualcomm', ceo: 'Paul Jacobs'),
      const ContactModal(
          companyName: 'Samsung', ceo: 'Tim Baxter'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new ContactsList(_buildContactList()));
  }
}