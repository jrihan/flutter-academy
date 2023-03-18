import 'package:academy/layers/domain/entities/document_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'document_datasource.dart';

class DocumentDataSourceImpl implements DocumentDataSource {
  final docI = FirebaseFirestore.instance.collection('documents');

  @override
  Future<void> createDocument(DocumentEntity document) async {
    try {
      await docI.doc().set(document.toJson());
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<DocumentEntity>> fetchDocuments() async {
    try {
      final response = await docI.get();
      final documents = response.docs
          .map((snapshot) => DocumentEntity.fromJson(snapshot.data()))
          .toList();
      return documents;
    } catch (e) {
      rethrow;
    }
  }
}
