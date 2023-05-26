class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductModel> _products;
  List<ProductModel> get products => _products;
  Product(
      {required totalSize,
      required typeId,
      required offset,
      required products}) {
    this._totalSize = totalSize;
    this._typeId = typeId;
    this._offset = offset;
    this._products = products;
  }
  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json["total_size"];
    _typeId = json["type_id"];
    _offset = json["offset"];
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products!.add(ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel {
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? image;
  String? location;
  String? creaetedAt;
  String? updatedAt;
  int? typeId;
  ProductModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stars,
    this.image,
    this.location,
    this.creaetedAt,
    this.updatedAt,
    this.typeId,
  });
  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json[''];
    name = json[''];
    description = json[''];
    price = json[''];
    stars = json[''];
    image = json[''];
    location = json[''];
    creaetedAt = json[''];
    updatedAt = json[''];
    typeId = json[''];
  }
}
