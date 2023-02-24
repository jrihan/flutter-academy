import 'package:academy/layers/domain/entities/document_entity.dart';
import 'package:dartz/dartz.dart';

import '../repositories/document_repository.dart';

abstract class FetchDocumentsUseCase {
  Future<Either<Exception, List<DocumentEntity>>> call();
}

class FetchDocumentUseCaseImpl implements FetchDocumentsUseCase {
  final DocumentRepository repository;

  FetchDocumentUseCaseImpl(this.repository);

  @override
  Future<Either<Exception, List<DocumentEntity>>> call() {
    return repository.fetchDocuments();
  }
}
