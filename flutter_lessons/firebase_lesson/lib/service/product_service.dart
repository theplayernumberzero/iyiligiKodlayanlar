import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_lesson/model/product_model.dart';

class ProductService {
  final productCollection = FirebaseFirestore.instance.collection("products");

  //class atrribute lerini direk kendi içlerinde kullanamıyorduk. Get ile bu sorunu halletmiş oluruz.
  CollectionReference<ProductModel?> get productCollectionConvertor =>
      productCollection.withConverter<ProductModel?>(
        fromFirestore: (snapshot, _) {
          final jsonData = snapshot.data();
          if (jsonData == null) return null;
          return ProductModel.fromJson({...jsonData, 'id': snapshot.id});
        },
        toFirestore: (product, _) => product?.toJson() ?? {},
      );

  Future<List<ProductModel>> getProductList() async {
    final snapshot = await productCollection.get();
    final productList = <ProductModel>[];

    for (final doc in snapshot.docs) {
      final data = doc.data();
      final product = ProductModel.fromJson({...data, 'id': doc.id});
      productList.add(product);
    }

    return productList;
  }

  Future<void> addProduct(ProductModel product) async {
    productCollection.add(product.toJson());
  }

  Future<void> deleteProduct(String docId) async {
    await productCollection.doc(docId).delete();
  }

  Future<void> updateProduct(String docId, ProductModel newProduct) async {
    await productCollection.doc(docId).update(newProduct.toJson());
  }
}
