import 'package:academy/layers/domain/usecases/create_document_usecase.dart';
import 'package:academy/layers/domain/usecases/fetch_documents_usecase.dart';
import 'package:mobx/mobx.dart';

part 'document_controller.g.dart';

class DocumentController = _DocumentControllerBase with _$DocumentController;

abstract class _DocumentControllerBase with Store {
  late CreateDocumentUseCase _createDocumentUseCase;
  late FetchDocumentsUseCase _fetchDocumentsUseCase;

  _DocumentControllerBase(
      {required CreateDocumentUseCase createDocumentUseCase,
      required FetchDocumentUseCaseImpl fetchDocumentUseCaseImpl}) {
    _createDocumentUseCase = createDocumentUseCase;
    _fetchDocumentsUseCase = fetchDocumentUseCaseImpl;
  }
}
