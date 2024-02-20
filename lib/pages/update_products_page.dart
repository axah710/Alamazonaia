// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:store_app/components/custom_button.dart';
import 'package:store_app/components/custom_text_form_field.dart';
import 'package:store_app/helper/constants.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class UpdatePage extends StatefulWidget {
  UpdatePage({super.key});
  static String id = updateId;

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  String? productName, description, image;

  String? price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Update Product",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 111,
              ),
              CustomTextField(
                labelText: "Product Name",
                myIcon: Icons.production_quantity_limits,
                onChanged: (data) {
                  productName = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                labelText: "Description",
                myIcon: Icons.description,
                onChanged: (data) {
                  description = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                labelText: "Price",
                myIcon: Icons.price_change,
                onChanged: (data) {
                  price = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                labelText: "Image",
                myIcon: Icons.image,
                onChanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(
                height: 57,
              ),
              CustomButton(
                buttonName: "Update",
                onTap: () async {
                  try {
                    await updateProductButtonServiceProcess(product);

                    isLoading = true;

                    sucessSnackBar(context);
                  } catch (e) {
                    failureSnackBar(e, context);
                  }
                  isLoading = false;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sucessSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      margin: EdgeInsets.only(
        right: 24,
        left: 16,
        bottom: 32,
      ),
      elevation: 0,
      padding: EdgeInsets.only(
        bottom: 32,
        top: 32,
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: '$productName Has Been Updated Sucessfully',
        titleFontSize: 11,
        messageFontSize: 11,
        message:
            'The product has been updated successfully and will be available in the next major release of the application . ',
        contentType: ContentType.success,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  void failureSnackBar(Object e, BuildContext context) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.red,
      content: AwesomeSnackbarContent(
        title: e.toString(),
        message: 'Oops There Was A Problem ',
        contentType: ContentType.failure,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  Future<void> updateProductButtonServiceProcess(ProductModel product) async {
    await UpdateProductService().updateProduct(
      title: productName == null ? product.title : productName!,
      price: price == null ? product.price.toString() : price!,
      description: description == null ? product.description : description!,
      image: image == null ? product.imageUrl : image!,
      category: product.category,
      id: product.id,
    );
  }
}
