import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallEx extends StatefulWidget
{
  const CallEx({super.key});

  @override
  State<CallEx> createState() => _CallExState();
}

class _CallExState extends State<CallEx> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(actions:
        [
          IconButton(onPressed: ()
          {
            _makePhoneCall("8980936457");
          }, icon: Icon(Icons.call)),
          IconButton(onPressed: ()
          {
            _sendingSMS();
          }, icon: Icon(Icons.sms)),
          IconButton(onPressed: ()
          {
            _sendingMails();
          }, icon: Icon(Icons.email)),
        ],),
      );
  }
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
Future<void> _sendingSMS() async {
  var _url = Uri.parse("sms:8980936457",);

  if (!await launchUrl(_url, mode: LaunchMode.externalApplication,)) {
    throw Exception('Could not launch $_url');
  }
}
Future<void> _sendingMails() async {
  var _url = Uri.parse("mailto:feedback@geeksforgeeks.org");

  if(!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $_url');
  }
}
