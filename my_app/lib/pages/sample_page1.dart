import 'package:flutter/material.dart';

class SamplePage1 extends StatelessWidget {
  const SamplePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カスタムフォントの導入'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              'これはサンプルページです',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              'これはサンプルページです',
              style: TextStyle(
                fontFamily: 'MPLUS',
                fontSize: 24,
              ),
            ),
            Text(
              'これはサンプルページです',
              style: TextStyle(
                fontFamily: 'NotoSerifJP',
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
