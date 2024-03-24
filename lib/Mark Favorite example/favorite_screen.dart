import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favorite_controller.dart';

class MarkFavoriteScreen extends StatefulWidget {
  const MarkFavoriteScreen({super.key});

  @override
  State<MarkFavoriteScreen> createState() => _MarkFavoriteScreenState();
}

class _MarkFavoriteScreenState extends State<MarkFavoriteScreen> {
  final controller = Get.put(FavoriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Screen'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.myFruits.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
              title: Text(controller.myFruits[index]),
              trailing: Obx(
                () => IconButton(
                  onPressed: () {
                    if (controller.favFruits
                        .contains(controller.myFruits[index])) {
                      controller.removeFavFruit(controller.myFruits[index]);
                    } else {
                      controller.addFavFruit(controller.myFruits[index]);
                    }
                  },
                  icon: const Icon(Icons.favorite),
                  color:
                      controller.favFruits.contains(controller.myFruits[index])
                          ? Colors.red
                          : Colors.white,
                ),
              )),
        ),
      ),
    );
  }
}
