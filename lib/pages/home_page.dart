import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_app/components/Custom_card.dart';
import 'package:store_app/helper/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/all_product_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = homeId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Al Amazonaia",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 65,
        ),
        child: FutureBuilder(
          // ignore: missing_required_param
          future: AllProductService(Dio()).getAllProductService(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> productsList = snapshot.data!;
              return GridView.builder(
                itemCount: productsList.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 11,
                  mainAxisSpacing: 101,
                ),
                itemBuilder: (context, index) {
                  return CustomCard(
                    product: productsList[index],
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
