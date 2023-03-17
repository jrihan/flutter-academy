import 'package:academy/layers/domain/entities/document_entity.dart';

abstract class DocumentDataSource {
  Future<List<DocumentEntity>> fetchDocuments();
  Future<void> createDocument(DocumentEntity document);
}
