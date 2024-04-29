import 'dart:convert';

import 'package:ecom/Models/product_response.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FetchedData extends GetxController {
  var productsMap = <ProductResponse>[].obs;
  List<ProductResponse> cartProduct = [];
  var likedProduct = <ProductResponse>[].obs;
  late String errorMessage;

  bool hasError = false;
  bool isLoading = false;

  var selectedProduct = Rx<ProductResponse?>(
    ProductResponse(),
  );

  get getProductMap => productsMap;

  bool get getIsLoading => isLoading;

  bool get getHasError => hasError;

  List<ProductResponse> get getCartedProduct => cartProduct;

  List<ProductResponse> get getLikedProduct => likedProduct;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    isLoading = true;
    final request = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );

    final List<dynamic> requestData = await jsonDecode(request.body);

    if (request.statusCode >= 200 && request.statusCode < 300) {
      // No error
      List<ProductResponse> products = requestData
          .map((element) => ProductResponse.fromJson(element))
          .toList();

      productsMap.value = products;
      isLoading = false;
      return;
    }
  }

  addToCart(ProductResponse product) {
    bool isItemInCart =
        cartProduct.any((cartItem) => cartItem.id == product.id);

    if (!isItemInCart) {
      cartProduct.add(product);
    }
  }
}
