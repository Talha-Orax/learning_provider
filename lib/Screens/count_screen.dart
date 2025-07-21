import "package:flutter/material.dart";
import "package:learning_provider/Provider/count_provider.dart";
import "package:learning_provider/main.dart";
import "package:provider/provider.dart";

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Incrementor",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<CountProvider>().count.toString(),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: context.watch<CountProvider>().addcount,
                  shape: const CircleBorder(),
                  backgroundColor: Colors.teal[600],
                  splashColor: Colors.tealAccent[50],
                  foregroundColor: Colors.white,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: context.watch<CountProvider>().subcount,
                  shape: const CircleBorder(),
                  backgroundColor: Colors.teal[600],
                  splashColor: Colors.tealAccent[50],
                  foregroundColor: Colors.white,
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
