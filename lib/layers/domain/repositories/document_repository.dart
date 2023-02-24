import 'package:academy/layers/domain/entities/document_entity.dart';
import 'package:dartz/dartz.dart';

abstract class DocumentRepository {
  Future<Either<Exception, List<DocumentEntity>>> fetchDocuments();
  Future<Either<Exception, Unit>> createDocument(DocumentEntity document);
}
