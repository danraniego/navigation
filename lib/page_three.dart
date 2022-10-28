import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {

  final String data;

  const PageThree({
    required this.data,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('This is Page 3 a Stateless Widget',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'This data is from page 3');
                },
                child: const Text('Back with Data')
            ),
          )
        ],
      ),
    );
  }
}
