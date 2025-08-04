import 'package:url_launcher/url_launcher.dart';

void launchResume()async{
  // PDF view format
  final url = Uri.parse("https://drive.google.com/file/d/1jCN2yTvhAErLx8udrR34IBnbfhfqey7C/view?usp=sharing");
  //final url = Uri.parse("https://drive.google.com/file/d/1IgUEs0p06U7MfOn9QwCkTn1wv2g2Nv7t/view?usp=sharing");
 // Docx format  final url = Uri.parse("https://docs.google.com/document/d/18nJx7SrS_1hPxzfXrnx-rIP_rxrToqit");

  if (await canLaunchUrl(url)){
    await launchUrl(url,mode: LaunchMode.inAppBrowserView);
  }
  else{
    throw 'Could not launch $url';
  }
}