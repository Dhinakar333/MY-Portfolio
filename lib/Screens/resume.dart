import 'package:url_launcher/url_launcher.dart';

void launchResume()async{
  final url = Uri.parse("https://docs.google.com/document/d/18nJx7SrS_1hPxzfXrnx-rIP_rxrToqit");

  if (await canLaunchUrl(url)){
    await launchUrl(url,mode: LaunchMode.inAppBrowserView);
  }
  else{
    throw 'Could not launch $url';
  }
}