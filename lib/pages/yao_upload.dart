import 'package:flutter/material.dart';

class YaoUpload extends StatefulWidget {
  const YaoUpload({super.key});

  @override
  State<YaoUpload> createState() => _YaoUploadState();
}

class _YaoUploadState extends State<YaoUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A1818),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              width: 312,
              height: 54,
              child: Text(
                '''*jika ada file yang perlu di upload silahkan tekan icon dibawah''',
                style: TextStyle(fontSize: 20.0, color: Colors.red),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30.0),
              width: 360,
              height: 360,
              decoration: const BoxDecoration(
                color: Color(0xffECECEC),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(1.0, 0.5),
                      color: Colors.black)
                ],
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.upload_file_rounded,
                    color: Color(0xff3615F7),
                    size: 60.0,
                  )),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 56.0,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff3615F7)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'sukses');
                  },
                  icon: const Icon(Icons.send_sharp),
                  label: const Text('Next')),
            )
          ],
        ),
      ),
    );
  }
}
