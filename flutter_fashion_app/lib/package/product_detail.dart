class productDetail {
  String? image_product;
  String? name_product;
  String? price_product;
  dynamic? rating;

  productDetail({
    required this.image_product,
    required this.name_product,
    required this.price_product,
    required this.rating,
  });
}

var detailList = [
  productDetail(
    image_product: "asset/image/sepatu_3.png",
    name_product: "Vans",
    price_product: "100.000",
    rating: 4.0,
  ),
  productDetail(
    image_product: "asset/image/sepatu_4.png",
    name_product: "Hig heels - red",
    price_product: "240.000",
    rating: 4.5,
  ),
  productDetail(
    image_product: "asset/image/sepatu_5.png",
    name_product: "Hig heels - blue",
    price_product: "240.000",
    rating: 4.8,
  ),
  productDetail(
    image_product: "asset/image/sepatu_6.png",
    name_product: "Casual Shoes - white",
    price_product: "240.000",
    rating: 5.0,
  ),
  productDetail(
    image_product: "asset/image/kemeja_1.png",
    name_product: "Kemeja - black",
    price_product: "75.000",
    rating: 5.0,
  ),
  productDetail(
    image_product: "asset/image/kemeja_2.png",
    name_product: "Kemeja - blue",
    price_product: "75.000",
    rating: 3.5,
  ),
  productDetail(
    image_product: "asset/image/kemeja_3.png",
    name_product: "Kemeja - white",
    price_product: "75.000",
    rating: 4.0,
  ),
  productDetail(
    image_product: "asset/image/topi_1.png",
    name_product: "Topi - black",
    price_product: "45.000",
    rating: 4.5,
  ),
  productDetail(
    image_product: "asset/image/topi_2.png",
    name_product: "Topi - navy",
    price_product: "45.000",
    rating: 5.0,
  ),
  productDetail(
    image_product: "asset/image/celana_1.png",
    name_product: "Celana - white",
    price_product: "120.000",
    rating: 5.0,
  ),
  productDetail(
    image_product: "asset/image/jaket_1.png",
    name_product: "Jaket - black",
    price_product: "150.000",
    rating: 5.0,
  ),
  productDetail(
    image_product: "asset/image/kaos_1.png",
    name_product: "Kaos - white",
    price_product: "50.000",
    rating: 4.7,
  ),
];
