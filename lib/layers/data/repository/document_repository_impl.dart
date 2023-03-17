import 'package:academy/layers/data/datasource/document_datasource.dart';
import 'package:academy/layers/domain/entities/document_entity.dart';
import 'package:academy/layers/domain/repositories/document_repository.dart';
import 'package:dartz/dartz.dart';

class DocumentRepositoryImpl implements DocumentRepository {
  final DocumentDataSource _dataSource;

  DocumentRepositoryImpl({required DocumentDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<Either<Exception, Unit>> createDocument(
      DocumentEntity document) async {
    try {
      await _dataSource.createDocument(document);
      return right(unit);
    } catch (e) {
      return left(Exception());
    }
  }

  @override
  Future<Either<Exception, List<DocumentEntity>>> fetchDocuments() async {
    try {
      final List<DocumentEntity> documents = await _dataSource.fetchDocuments();
      return right(documents);
    } catch (e) {
      return left(Exception());
    }
  }
}
