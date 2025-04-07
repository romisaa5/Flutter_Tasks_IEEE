class Product {
  final int id;
  final String title;
  final int price;
  final  String imageUrl;
  final int? discountValue;
  final String category;
  final int? rate;
 const Product(
      {required this.id,
      required this.title,
    this.price=0,
      required this.imageUrl,
      this.discountValue,
       this.category='Other',
      this.rate});
}

List<Product> dummyProducts = [
  Product(
      id: 1,
      title: 'T_shirt',
      price: 300,
      imageUrl: 'assets/images/photo.png',
      category: 'clothes',discountValue: 20),
        Product(
      id: 1,
      title: 'T_shirt',
      price: 300,
      imageUrl: 'assets/images/photo.png',
      category: 'clothes',discountValue: 20),
        Product(
      id: 1,
      title: 'T_shirt',
      price: 300,
      imageUrl: 'assets/images/photo.png',
      category: 'clothes',discountValue: 20),
        Product(
      id: 1,
      title: 'T_shirt',
      price: 300,
      imageUrl: 'assets/images/photo.png',
      category: 'clothes',discountValue: 20),
        Product(
      id: 1,
      title: 'T_shirt',
      price: 300,
      imageUrl: 'assets/images/photo.png',
      category: 'clothes',discountValue: 20),
];
