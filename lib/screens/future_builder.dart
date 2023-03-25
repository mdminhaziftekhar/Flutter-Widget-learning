import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatefulWidget {
  const FutureBuilderScreen({super.key});

  @override
  State<FutureBuilderScreen> createState() => _FutureBuilderScreenState();
}

class _FutureBuilderScreenState extends State<FutureBuilderScreen> {
  String _data = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilderScreen'),
      ),
      body: Center(
        child: FutureBuilder(
          future: _getData(_data),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_data),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _data = snapshot.data.toString();
                    });
                  },
                  child: const Text('Refresh'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Future<String> _getData(String data) async {
  await Future.delayed(
    const Duration(seconds: 1),
  );

  return data == 'Super' ? 'Hello' : 'Super';
}
