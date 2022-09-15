import 'dart:convert';

import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class URLLauncherAPI {
  static _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Future openLink({required String url}) => _launchUrl(url);

  static Future openEmail({
    required String toMail,
    required String subject,
    required String body,
  }) async {
    final url =
        'mailto:$toMail?subject=${Uri.decodeFull(subject)}?body=${Uri.decodeFull(body)}';
    await _launchUrl(url);
  }

  static Future openPhoneCall({required String phoneNumber}) async {
    final url = 'tel:$phoneNumber';
    await _launchUrl(url);
  }

  static Future openSMS({required String phoneNumber}) async {
    final url = 'sms:$phoneNumber';
    await _launchUrl(url);
  }

  static launchURLApp() async {
    const url = 'https://www.geeksforgeeks.org/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Future sendEmail({
    required String name,
    required String email,
    required String projectType,
    required String description,
  }) async {
    const serviceId = 'service_yu2k51f';
    const templateId = 'template_j8vo9l2';
    const userId = 'fimKpJwkJjemd5Ruc';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id' : userId,
        'template_params':{
          'user_name': name,
          'user_email': email,
          'user_subject': projectType,
          'user_message': description,
        }
      }),
    );
  }
}
