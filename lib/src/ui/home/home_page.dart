import 'package:flutter/material.dart';
import 'package:flutter_application_3/src/ui/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ola'),
      ),
      body: Consumer<HomeController>(builder: (context, controller, __) {
        return Column(
          children: [
            Text(controller.total().toString()),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView(
                children: controller.transactionList
                    .map((e) => ListTile(
                          title: Text(e.title),
                          subtitle: Text(e.category),
                          trailing: Text(e.value.toString()),
                        ))
                    .toList(),
              ),
            ),
          ],
        );
      }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Navigator.pushNamed(context, '/transaction')),
    );
  }
}
