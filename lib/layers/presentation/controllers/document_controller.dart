import 'package:academy/layers/domain/entities/document_entity.dart';
import 'package:academy/layers/domain/usecases/create_document_usecase.dart';
import 'package:academy/layers/domain/usecases/fetch_documents_usecase.dart';
import 'package:mobx/mobx.dart';
import 'package:dartz/dartz.dart';

part 'document_controller.g.dart';

class DocumentController = _DocumentControllerBase with _$DocumentController;

abstract class _DocumentControllerBase with Store {
  late CreateDocumentUseCase _createDocumentUseCase;
  late FetchDocumentsUseCase _fetchDocumentsUseCase;

  _DocumentControllerBase(
      {required CreateDocumentUseCase createDocumentUseCase,
      required FetchDocumentsUseCase fetchDocumentUseCase}) {
    _createDocumentUseCase = createDocumentUseCase;
    _fetchDocumentsUseCase = fetchDocumentUseCase;
  }

  @observable
  List<DocumentEntity> documents = [];

  @observable
  bool isLoading = false;

  @action
  Future<void> getAllDocuments() async {
    isLoading = true;
    final Either<Exception, List<DocumentEntity>> _response =
        await _fetchDocumentsUseCase.call();
    _response.fold(
      (Exception error) {
        print(error);
      },
      (List<DocumentEntity> docs) {
        documents = docs;
      },
    );
    isLoading = false;
  }
}
