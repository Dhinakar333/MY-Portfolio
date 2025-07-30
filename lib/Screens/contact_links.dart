import 'package:url_launcher/url_launcher.dart';

//INSTAGRAM
void launchInstagram() async{
  final url = Uri.parse("https://www.instagram.com/_innocent_l_o_v_e_r_/");

  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
  else{
    throw 'Could not launch $url';
  }
}
//LINKEDIN
void launchLinkedIn() async{
  final url = Uri.parse("https://www.linkedin.com/in/dhinakar-s-552078230");

  if (await canLaunchUrl(url)){
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
  else{
    throw 'Could not launch $url';
  }
}
//GMAIL
void launchGmail() async{
  final url = Uri(
    scheme: 'mailto',
    path: 'dhinakard41@gmail.com',
    query: 'subject=Contact&body=Hi Dhinakar,',
  );

  if (await canLaunchUrl(url)){
    await launchUrl(url);
  }
  else{
    throw 'Could not launch $url';
  }
}
//GITHUB
void launchGithub()async{
  final url = Uri.parse("https://github.com/Dhinakar333");

  if (await canLaunchUrl(url)){
    await launchUrl(url,mode: LaunchMode.externalApplication);
  }
  else{
    throw 'Could not launch $url';
  }
}

