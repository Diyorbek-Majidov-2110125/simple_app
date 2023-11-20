import 'package:flutter/material.dart';
import 'screen5.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Screen 4',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => Screen5()));
                if (result != null) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Result'),
                      content: Text(result),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text('Go to Screen 5'),
            ),
          ],
        ),
      ),
    );
  }
}