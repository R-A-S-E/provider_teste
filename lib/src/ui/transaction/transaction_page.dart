import 'package:flutter/material.dart';
import 'package:flutter_application_3/src/models/transaction_model.dart';
import 'package:flutter_application_3/src/ui/home/controller/home_controller.dart';
import 'package:flutter_application_3/src/ui/transaction/controller/transaction_controller.dart';
import 'package:provider/provider.dart';

class TransActionPage extends StatefulWidget {
  const TransActionPage({super.key});

  @override
  State<TransActionPage> createState() => _TransActionPageState();
}

final TransActionController controller = TransActionController();

class _TransActionPageState extends State<TransActionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('Adicione uma transação'),
          TextField(
            decoration: const InputDecoration(label: Text('titulo')),
            onChanged: (value) => controller.title = value,
          ),
          DropdownButton<String>(
              dropdownColor: Colors.red,
              value: controller.category,
              items: controller.categoryList
                  .map(
                    (e) => DropdownMenuItem<String>(
                      value: e,
                      child: Icon(controller.icon(e)),
                    ),
                  )
                  .toList(),
              onChanged: (a) {
                controller.category = a ?? '';
                print(controller.category);
                setState(() {});
              }),
          TextField(
            decoration: const InputDecoration(label: Text('valor')),
            onChanged: (value) => controller.value = double.parse(value),
          ),
          const SizedBox(height: 16),
          Consumer<HomeController>(builder: (context, homeController, _) {
            return ElevatedButton(
              child: const Text('Adicionar'),
              onPressed: () {
                var trans = Transaction(
                    value: controller.value,
                    title: controller.title,
                    category: controller.category);
                homeController.setTransAction(trans);
                Navigator.pop(context);

                // print(
                //     '${controller.title} + ${controller.category} + ${controller.value}');
                // setState(() {});
              },
            );
          })
        ],
      ),
    );
  }
}
