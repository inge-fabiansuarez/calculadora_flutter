import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primera App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mi primera App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0.0;
  double _counter1 = 0.0;
  double resultado = 0.0;

  void _incrementCounter1() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter1++;
    });
  }

  void suma() {
    setState(() {
      resultado = _counter + _counter1;
    });
  }

  void resta() {
    setState(() {
      resultado = _counter - _counter1;
    });
  }

  void multiplicacion() {
    setState(() {
      resultado = _counter * _counter1;
    });
  }

  void division() {
    setState(() {
      resultado = _counter / _counter1;
    });
  }

  void reset() {
    setState(() {
      resultado = 0;
      _counter = 0;
      _counter1 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Incremente su primer valor y el segundo y luego realice la operación deseada',
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Primer valor: $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Segundo valor: $_counter1',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Resultado: $resultado',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            FilledButton(
                onPressed: _incrementCounter1,
                child: const Text("Primer Valor")),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
                onPressed: _incrementCounter2,
                child: const Text("Segundo Valor")),
            const SizedBox(
              height: 5,
            ),
            FilledButton(onPressed: suma, child: const Text("Suma")),
            const SizedBox(
              height: 5,
            ),
            FilledButton(onPressed: resta, child: const Text("Resta")),
            const SizedBox(
              height: 5,
            ),
            FilledButton(
                onPressed: multiplicacion, child: const Text("Multiplicación")),
            const SizedBox(
              height: 5,
            ),
            FilledButton(onPressed: division, child: const Text("División")),
            const SizedBox(
              height: 5,
            ),
            FilledButton(onPressed: reset, child: const Text("Reset"))
          ],
        ),
      ),
    );
  }
}
