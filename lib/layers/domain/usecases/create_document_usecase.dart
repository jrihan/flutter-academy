import 'package:academy/layers/domain/entities/document_entity.dart';
import 'package:dartz/dartz.dart';

import '../repositories/document_repository.dart';

abstract class CreateDocumentUseCase {
  Future<Either<Exception, Unit>> call(DocumentEntity document);
}

class CreateDocumentUseCaseImpl implements CreateDocumentUseCase {
  final DocumentRepository _repository;

  CreateDocumentUseCaseImpl({required DocumentRepository repository})
      : _repository = repository;

  @override
  Future<Either<Exception, Unit>> call(DocumentEntity document) {
    return _repository.createDocument(document);
  }
}
