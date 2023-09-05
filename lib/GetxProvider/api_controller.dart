import 'dart:convert';
import 'package:ecom/Models/product_response.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class FetchedData extends GetxController {
  var productsMap = <ProductResponse>[].obs;
  List<ProductResponse> cartProduct = [];
  var likedProduct = <ProductResponse>[].obs;

  bool hasError = false;
  bool isLoading = false;

  var selectedProduct = Rx<ProductResponse?>(
    ProductResponse(),
  );

  get getProductMap => productsMap;

  get getIsLoading => isLoading;

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

    List<ProductResponse> products = requestData
        .map((element) => ProductResponse.fromJson(element))
        .toList();

    productsMap.value = products;
    isLoading = false;
  }

  addToCart(ProductResponse product) {
    bool isItemInCart =
        cartProduct.any((cartItem) => cartItem.id == product.id);

    if (isItemInCart) {}
    cartProduct.add(product);
  }
}
