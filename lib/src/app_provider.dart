import 'package:flutter/cupertino.dart';
import 'package:flutter_application_3/src/app_material.dart';
import 'package:flutter_application_3/src/ui/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeController>(
          create: (context) => HomeController(),
        ),
      ],
      child: const AppMaterial(),
    );
  }
}
