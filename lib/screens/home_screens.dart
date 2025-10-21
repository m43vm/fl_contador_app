import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void reset() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const size30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 66, 183),
      appBar: AppBar(
        title: Text(
          'Contador',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        elevation: 10.0,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        shadowColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('AAAAAAAAAAAAAAAA', style: size30),
            SizedBox(height: 20),
            Text('$contador', style: size30),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        incrementarFn: incrementar,
        decrementarFn: decrementar,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function incrementarFn;
  final Function decrementarFn;
  final Function resetFn;

  const CustomFloatingActionButton({
    super.key,
    required this.incrementarFn,
    required this.decrementarFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          child: const Text(
            "restar",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          //child: const Text("añadir"),
          onPressed: () => resetFn(),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          child: const Text(
            "reset",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          onPressed: () => decrementarFn(),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          child: const Text(
            "sumar",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          onPressed: () => incrementarFn(),
        ),
      ],
    );
  }
}
