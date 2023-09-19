import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = '/progress';
  const ProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 15,
    );
    return const Center(
      child: Column(
        children: [
          //Todo: Add a CircularProgressIndicator
          SizedBox(height: 20),
          Text('Cicular progress indicator', style: style),
          SizedBox(height: 20),
          CircularProgressIndicator(),

          // Todo: Add a CircularProgressIndicator controlled
          SizedBox(height: 20),
          Text('Cicular y Linear controlado', style: style),
          SizedBox(height: 20),
          _CircularProgressIndicatorControlled(),

          // Todo: Add a LinearProgressIndicator
          SizedBox(height: 20),
          Text('Linear progress indicator', style: style),
          SizedBox(height: 20),
          LinearProgressIndicator(),
        ],
      ),
    );
  }
}

class _CircularProgressIndicatorControlled extends StatelessWidget {
  const _CircularProgressIndicatorControlled();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(
        const Duration(milliseconds: 300),
        (value) => (value * 2) / 100,
      ).takeWhile((element) => element <= 100),
      builder: (context, snapshot) {
        final value = snapshot.data ?? 0.0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: value,
                strokeWidth: 2,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: LinearProgressIndicator(value: value),
              )
            ],
          ),
        );
      },
    );
  }
}
