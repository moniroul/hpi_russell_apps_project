import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  Uri _url = Uri.parse("https://fb.com/proman.code");
  Uri _url2 = Uri.parse("https://github.com/moniroul");
  Uri _url3 = Uri.parse("https://russell.ruxzom.com");

  _launchUrl(Uri ur) async {
    if (!await launchUrl(ur)) {
      throw Exception('Could not launch $ur');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Russell"),
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              
              child: Image.asset(
                height: 100,
                width: 100,
                "assets/logo.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name => Russell Islam",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "College => Habiganj polytechnic institute",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Department => Computer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                   Text(
                    "Subject => Apps Development Project",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Programming skill => Dart | Python | C# | Java",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          color: Colors.black54,
                          onPressed: () async {
                            await _launchUrl(_url);
                          },
                          child: Text(
                            "Facebook",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        MaterialButton(
                          color: Colors.black54,
                          onPressed: () async {
                            await _launchUrl(_url2);
                          },
                          child: Text(
                            "GitHub",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        MaterialButton(
                          color: Colors.black54,
                          onPressed: () async {
                            await _launchUrl(_url3);
                          },
                          child: Text(
                            "Portfolio",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
