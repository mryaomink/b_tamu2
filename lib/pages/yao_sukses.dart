import 'package:flutter/material.dart';

class YaoSukses extends StatelessWidget {
  const YaoSukses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A1818),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/suksesimg.png'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 80.0,
          ),
          Container(
            color: const Color(0xffECECEC),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  width: 300,
                  height: 176,
                  child: Text(
                    'Terima Kasih Sudah Berkunjung Semoga hari anda menyenangkan'
                        .toUpperCase(),
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 40.0,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3615F7)),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'bukutamu');
                      },
                      icon: const Icon(Icons.check_circle),
                      label: const Text('OK')),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
