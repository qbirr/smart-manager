import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ProductModel {
  Product product;
  List<ProductVariant>? variants;

  ProductModel({
    required this.product,
    this.variants,
  });

  factory ProductModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final product = Product.fromJson(data['product']);
    final variants = (data['variants'] as List<dynamic>?)
        ?.map((variantData) => ProductVariant.fromMap(variantData))
        .toList();

    return ProductModel(product: product, variants: variants);
  }
  factory ProductModel.fromJson(Map<String, dynamic> data) {
    // final Map<String, dynamic> data = jsonDecode(json);
    final product = Product.fromJson(data['product']);
    final variants = (data['variants'] as List<dynamic>?)
        ?.map((variantData) => ProductVariant.fromMap(variantData))
        .toList();

    return ProductModel(product: product, variants: variants);
  }
  factory ProductModel.fromMap(Map<String, dynamic> map) {
    final product = Product.fromMap(map['product']);
    final variants = (map['variants'] as List<dynamic>?)
        ?.map((variantData) => ProductVariant.fromMap(variantData))
        .toList();

    return ProductModel(product: product, variants: variants);
  }
  String toJson() {
    final Map<String, dynamic> data = {
      'product': product.toJson(),
      'variants': variants?.map((variant) => variant.toMap()).toList(),
    };
    return jsonEncode(data);
  }

  Map<String, dynamic> toMap() {
    return {
      'product': product.toMap(),
      'variants': variants?.map((variant) => variant.toMap()).toList(),
    };
  }

  @override
  String toString() {
    return toJson();
  }
}

class Product {
  String id;
  String categoryId;
  double price;
  String sku;
  String image;
  int stock;
  String name;
  String? description;

  Product({
    required this.id,
    required this.categoryId,
    required this.price,
    required this.sku,
    required this.image,
    required this.stock,
    required this.name,
    this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      categoryId: json['categoryId'],
      price: json['price'],
      sku: json['sku'],
      image: json['image'],
      stock: json['stock'],
      name: json['name'],
      description: json['description'],
    );
  }
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      categoryId: map['categoryId'],
      price: map['price'],
      sku: map['sku'],
      image: map['image'],
      stock: map['stock'],
      name: map['name'],
      description: map['description'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'categoryId': categoryId,
      'price': price,
      'sku': sku,
      'image': image,
      'stock': stock,
      'name': name,
      'description': description,
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'categoryId': categoryId,
      'price': price,
      'sku': sku,
      'image': image,
      'stock': stock,
      'name': name,
      'description': description,
    };
  }
}

class ProductVariant {
  String? name;
  RxList<String>? options;
  RxList<VariantPrices>? prices;

  ProductVariant({
    this.name,
    this.options,
    this.prices,
  });

  @override
  String toString() {
    return 'ProductVariant(name: $name, options: $options, prices: $prices)';
  }

  factory ProductVariant.fromMap(Map<String, dynamic> map) {
    return ProductVariant(
      name: map['name'],
      options: (map['options'] as List<dynamic>?)
          ?.map((option) => option.toString())
          .toList()
          .obs,
      prices: (map['prices'] as List<dynamic>?)
          ?.map((priceData) => VariantPrices.fromMap(priceData))
          .toList()
          .obs,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'options': options,
      'prices': prices?.map((price) => price.toMap()).toList(),
    };
  }
}

class VariantPrices {
  Map<String, dynamic>? option;
  double? price;
  int? stock;
  String? sku;

  VariantPrices({
    this.option,
    this.price,
    this.stock,
    this.sku,
  });

  @override
  String toString() {
    return 'VariantPrices(option: $option, price: $price, stock: $stock, sku: $sku)';
  }

  factory VariantPrices.fromMap(Map<String, dynamic> map) {
    return VariantPrices(
      option: map['option'] as Map<String, dynamic>?,
      price: map['price'] as double?,
      stock: map['stock'] as int?,
      sku: map['sku'] as String?,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'option': option,
      'price': price,
      'stock': stock,
      'sku': sku,
    };
  }
}
