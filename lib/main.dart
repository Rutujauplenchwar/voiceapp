import 'dart:math';

import 'package:flutter/material.dart';


void main()
{return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 53, 32, 170),
        appBar: AppBar(
          title: Text('Ask me any thing'),
          backgroundColor: Color.fromARGB(255, 80, 42, 158),
        ),
        body: VoiceApp(),
      ),
    ),
  );
} 

class VoiceApp extends StatefulWidget {
  const VoiceApp({super.key});

  @override
  State<VoiceApp> createState() => _VoiceAppState();
}

class _VoiceAppState extends State<VoiceApp> {
  int c=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed:()
                {
                  setState(() {
                    c=Random().nextInt(5)+1;
                    print('I got clicked');
                  });
                
                },
            child:Image(image: AssetImage('images/ball$c.png'),)
          ),
          ),
        ],
      ),
    );
  }
}


