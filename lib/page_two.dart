import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {

  final String data;

  const PageTwo({
    required this.data,
    Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('This is Page 2 a Stateful Widget',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'This data is from page 2');
                },
                child: const Text('Back with Data')
            ),
          )
        ],
      ),
    );
  }
}
